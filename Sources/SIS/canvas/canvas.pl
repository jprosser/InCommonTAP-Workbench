#!/usr/local/bin/perl -w
# 
# net_amqp_rabbit.pl, DESCRIPTION
# 
# Copyright (C) 2017 Tom Jordan
# 
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# $Id:$
# Tom Jordan <tom.jordan@wisc.edu>

use vars qw/$VERSION $FILE/;
($VERSION) = q$Revision: 1.1 $ =~ /([\d.]+)/;
($FILE) = q$RCSfile: net_amqp_rabbit.pl,v $ =~ /^[^:]+: ([^\$]+),v $/;

use strict;
use Net::AMQP::RabbitMQ;
use Data::Dumper;
use JSON;
use REST::Client;
use YAML qw/LoadFile Dump/;
use MIME::Base64;

# load config
my $config = LoadFile('config.yml');
my $debug = $config->{debug};
print "Dumping config:\n" . Dumper($config) . "\n" if ($debug);
 
my $channel = 1;
my $exchange = $config->{rabbit_exchange};
my $routing_key = $config->{rabbit_routing_key};
 
my $mq = Net::AMQP::RabbitMQ->new();
$mq->connect($config->{rabbit_host}, { user => $config->{rabbit_user}, password => $config->{rabbit_pass} });
$mq->channel_open($channel);
# Declare queue, letting the server auto-generate one and collect the name
my $queuename = $mq->queue_declare($channel, "");
print "Queuename: $queuename\n" if ($debug);
# Bind the new queue to the exchange using the routing key
#$mq->queue_bind($channel, $queuename, $exchange, $routing_key);
$mq->queue_bind($channel, $queuename, $exchange, $routing_key);
# Request that messages be sent and receive them until interrupted
$mq->consume($channel, $queuename);

print "Waiting for ESB events to process...\n";
 
while ( my $message = $mq->recv(0) )
  {
    print "Received message:\n" .  Dumper($message) . "\n" if ($debug);

    my $body = from_json($message->{body});
    print "Body: \n" . Dumper($body) . "\n" if ($debug);
    #print "Event Type: $body->{esbEvent}->[0]->{eventType}\n";
    #print "Group Name: $body->{esbEvent}->[0]->{groupName}\n";
    #print "SubjectId: $body->{esbEvent}->[0]->{subjectId}\n";

    # TODO:
    # 1. Determine message type (GROUP_ADD vs. MEMBERSHIP_ADD
    # 2. Get user / group info from Grouper WS
    # 3. Collect user memberships from Grouper WS
    # 4. Check if user / course exists in canvas
    # 5. Get course enrollments in canvas
    # 6. Compare canvas course enrollments to grouper course enrollments
    # 7. Enroll, Unenroll as needed

    if ($body->{esbEvent}->[0]->{eventType} eq 'GROUP_ADD') {
        #my ($coursename) =~ m/^ref\.courses\.(.*)$/,$body->{esbEvent}->[0]->{name};
        my $fullCourseName = $body->{esbEvent}->[0]->{name};
        print "Full Course Name: $fullCourseName\n" if ($debug);
        my ($coursename) = $fullCourseName =~ m/^ref:courses:(.*)$/;
        print "Got Group Add for course: $coursename\n" if ($debug);
        if (!(course_exists_in_canvas($coursename))) {
            create_canvas_course($coursename);
        }
    } elsif ($body->{esbEvent}->[0]->{eventType} eq 'MEMBERSHIP_ADD' || 
             $body->{esbEvent}->[0]->{eventType} eq 'MEMBERSHIP_DELETE') {
             if ($body->{esbEvent}->[0]->{sourceId} eq 'jdbc') {
                my $uid = $body->{esbEvent}->[0]->{subjectId};
                print "Got $body->{esbEvent}->[0]->{eventType} for $uid\n" if ($debug);
                # create user if they don't exist
                my $user = get_subject_info($uid);
                my $name = $user->{WsGetSubjectsResults}->{wsSubjects}->[0]->{name};
                if (!(user_exists_in_canvas($uid))) {
                    create_canvas_user($uid,$name);
                }
                # get course lists
                print "Getting course lists..\n" if ($debug);
                my $grouper_courses = get_grouper_courses($uid);
                my $canvas_courses = get_canvas_courses($uid);
                # now reconcile courses
                print "Reconciling courses..\n" if ($debug);
                reconcile_courses($uid, $grouper_courses, $canvas_courses);
            } else {
                print "*** SourceID not jdbc, skipping...\n" if ($debug);
            }
    } else {
        print "Unexpected message type: $body->{esbEvent}->[0]->{eventType}\n" if ($debug);
    }
}
    
 
$mq->disconnect();

sub get_subject_info {
    my $uid = shift;

    print "Looking for subject: $uid\n" if ($debug);

    my $client = REST::Client->new();
    $client->setHost($config->{grouper_host});
    $client->setTimeout(10);
    my $encoded_auth = encode_base64($config->{grouper_user} . ":" . $config->{grouper_pass});

	$client->GET( "/grouper-ws/servicesRest/json/v2_2_000/subjects/$uid",
    { "Content-Type" => "text/x-json", 'Authorization' => "Basic $encoded_auth" } );

    print Dumper $client->responseContent() if ($debug);
    
    my $subject = from_json($client->responseContent());
    
    return $subject;
}

sub get_grouper_courses {
    my $uid = shift;
    my %courses;

	print "Finding group memberships for: $uid\n" if ($debug);

    my $client = REST::Client->new();
    $client->setHost($config->{grouper_host});
    $client->setTimeout(10);
    my $encoded_auth = encode_base64($config->{grouper_user} . ":" . $config->{grouper_pass});

    $client->GET( "/grouper-ws/servicesRest/json/v2_2_000/subjects/$uid/groups",
    { "Content-Type" => "text/x-json", 'Authorization' => "Basic $encoded_auth" } );

	print Dumper $client->responseContent() if ($debug);

    my $result = from_json($client->responseContent);

    my $groups = $result->{WsGetGroupsLiteResult}->{wsGroups};
    
    foreach my $group (@$groups) {
        my $groupName = $group->{name};
        print "Looking at group: $groupName\n" if ($debug);
        if ($groupName =~ m/^ref\:courses/) {
            my ($courseName) = $groupName =~ m/^ref:courses:(.*)$/;
            print "Found $courseName\n" if ($debug);
            $courses{$courseName} = 1;
        }
    }

    print "Returning courses:\n" if ($debug);
    print Dumper %courses if ($debug);

    return \%courses;
}

sub get_canvas_courses {
    my $uid = shift;
    my %courses;
    
    print "Finding canvas courses for: $uid\n";

    my $canvas_login = $uid."@".$config->{email_suffix};
    my $canvas_token = $config->{canvas_token};
    my $client = REST::Client->new({
         host => $config->{canvas_url},
         timeout => 10
     });

    $client->getUseragent()->ssl_opts(verify_hostname => 0);
    $client->getUseragent()->ssl_opts(SSL_verify_mode => "SSL_VERIFY_NONE");
   
	# get canvas ID
    print "Getting canvas ID for canvas login $canvas_login\n" if ($debug);
    $client->GET("/api/v1/accounts/1/users?access_token=$canvas_token&search_term=$canvas_login");
    my $response = from_json($client->responseContent());
    print Dumper $response if ($debug);
    my $canvas_user_id = $response->[0]->{id};

	# Get enrollments for that canvas user ID
    print "Getting enrollments for canvas user id: $canvas_user_id\n" if ($debug);
	$client->GET("/api/v1/users/$canvas_user_id/enrollments?access_token=$canvas_token");
	$response = from_json($client->responseContent());
	print Dumper $response if ($debug);

    foreach my $enrollment (@$response) {
	  # Turn canvas course IDs into course names
      my $course_id = $enrollment->{course_id};
      print "Getting course name for course_id: $course_id\n" if ($debug);
      $client->GET("/api/v1/accounts/1/courses/$course_id/?access_token=$canvas_token");
      $response = from_json($client->responseContent());
      print Dumper $response if ($debug);
      # my $courseName = $response->[0]->{name};
      my $courseName = $response->{name};
      $courses{$courseName} = 1;
  }

  return \%courses;
}

sub user_exists_in_canvas {
    my $uid = shift;
    my $result;

	print "Finding $uid in canvas\n" if ($debug);

    my $canvas_token = $config->{canvas_token};

    my $canvas_login = $uid."@".$config->{email_suffix};

	my $client = REST::Client->new({
         host => $config->{canvas_url},
         timeout => 10
     });

	$client->getUseragent()->ssl_opts(verify_hostname => 0);
	$client->getUseragent()->ssl_opts(SSL_verify_mode => "SSL_VERIFY_NONE");

	$client->GET("/api/v1/accounts/1/users?access_token=$canvas_token&search_term=$canvas_login");
	my $response = from_json($client->responseContent());
	print Dumper $response if ($debug);
	if (defined($response->[0]->{id})) {
        print "User found\n" if ($debug);
        $result = 1;
    } else {
        print "User not found\n" if ($debug);
        $result = 0;
    }
    return $result;
}

sub course_exists_in_canvas {
    my $coursename = shift;
    my $result;

    print "Finding $coursename in canvas\n" if ($debug);

    my $canvas_token = $config->{canvas_token};

    my $client = REST::Client->new({
         host => $config->{canvas_url},
         timeout => 10
     });

    $client->getUseragent()->ssl_opts(verify_hostname => 0);
    $client->getUseragent()->ssl_opts(SSL_verify_mode => "SSL_VERIFY_NONE");

	$client->GET("/api/v1/accounts/1/courses?access_token=$canvas_token&search_term=$coursename");
    my $response = from_json($client->responseContent());
    print Dumper $response if ($debug);
    if (defined($response->[0]->{id})) {
        print "Course exists\n" if ($debug);
        $result = 1;
    } else {
        print "Course does not exist\n" if ($debug);
        $result = 0;
    }   
    return $result;
}

sub create_canvas_user {
    my $uid = shift;
	my $name = shift;
    # my $sis_user_id = shift;

	print "Creating canvas user with uid: $uid, name: $name\n";

    my $canvas_token = $config->{canvas_token};
    
    my $canvas_login = $uid."@".$config->{email_suffix};

	my $header;

	$header->{'Authorization'} = "Bearer: $canvas_token";
	$header->{'Content-type'} = "application/json";

    my $client = REST::Client->new({
         host => $config->{canvas_url},
         timeout => 10
    });

    $client->getUseragent()->ssl_opts(verify_hostname => 0);
    $client->getUseragent()->ssl_opts(SSL_verify_mode => "SSL_VERIFY_NONE");

	my $user;
	$user->{pseudonym}->{unique_id} = $canvas_login;
	$user->{pseudonym}->{unique_login} = $canvas_login;
	$user->{user}->{name} = $name;
    # $user->{pseudonym}->{sis_user_id} = $sis_user_id;
	$user->{pseudonym}->{password} = $config->{default_password};
	$user->{user}->{skip_registration} = 'true';

	my $json_user = to_json($user);

	$client->POST("/api/v1/accounts/1/users?access_token=$canvas_token",$json_user,$header);

	print Dumper $client->responseContent() if ($debug);	

}

sub create_canvas_course {
    my $courseName = shift;

    print "Creating $courseName in canvas\b" if ($debug);

    my $canvas_token = $config->{canvas_token};

	my $header;
	$header->{'Authorization'} = "Bearer: $canvas_token";
	$header->{'Content-type'} = "application/json";

    my $client = REST::Client->new({
         host => $config->{canvas_url},
         timeout => 10
     });

    $client->getUseragent()->ssl_opts(verify_hostname => 0);
    $client->getUseragent()->ssl_opts(SSL_verify_mode => "SSL_VERIFY_NONE");

	my $course;
    $course->{course}->{name} = $courseName;
    my $json_course = to_json($course);

	$client->POST("/api/v1/accounts/1/courses?access_token=$canvas_token",$json_course,$header);
    
    print Dumper $client->responseContent() if ($debug);

}

sub enroll_user_in_course {
    my $user = shift;
    my $course = shift;

	print "Enrolling $user in $course\n" if ($debug);

    my $canvas_token = $config->{canvas_token};
    my $header;
	$header->{'Authorization'} = "Bearer: $canvas_token";
	$header->{'Content-type'} = "application/json";
    
    my $client = REST::Client->new({
         host => $config->{canvas_url},
         timeout => 10
     });

    $client->getUseragent()->ssl_opts(verify_hostname => 0);
    $client->getUseragent()->ssl_opts(SSL_verify_mode => "SSL_VERIFY_NONE");
    
    # get canvas user id
	$client->GET("/api/v1/accounts/1/users?access_token=$canvas_token&search_term=$user");
    my $response = from_json($client->responseContent());
    my $user_id = @$response[0]->{id};
	print "Found user id: $user_id\n" if ($debug);

    # get canvas course id
    print "looking for Course Name: $course\n" if $debug;
    $client->GET("/api/v1/accounts/1/courses?access_token=$canvas_token&search_terms=$course");
    $response = from_json($client->responseContent());
    print $client->responseContent() if $debug;
    # for some reason Canvas returns all courses on a name search..
    my $course_id;
    foreach my $courses (@$response) {
        if ($courses->{name} eq $course) {
            print "Found $courses->{id} matching $course\n" if ($debug);
            $course_id = $courses->{id};
        }
    }
    print "Found Course_ID: $course_id for $course\n" if $debug;	
   
	# now do enrollment 
	my $enrollment;
    $enrollment->{enrollment}->{type} = "StudentEnrollment";
    $enrollment->{enrollment}->{user_id} = $user_id;
    $enrollment->{enrollment}->{enrollment_state} = "active";
    my $json_enrollment = to_json($enrollment);

	print "Adding enrollment: $json_enrollment\n" if $debug;
    $client->POST("/api/v1/courses/$course_id/enrollments?access_token=$canvas_token",$json_enrollment,$header);
    print Dumper $client->responseContent();
    $response = from_json($client->responseContent());
    print Dumper $response if $debug;

}

sub remove_user_from_course {
    my $uid = shift;
    my $course = shift;
   	print "Removing $course for: $uid\n" if ($debug);

    my $canvas_login = $uid."@".$config->{email_suffix};
    my $canvas_token = $config->{canvas_token};
    my $client = REST::Client->new({
         host => $config->{canvas_url},
         timeout => 10
     });

    $client->getUseragent()->ssl_opts(verify_hostname => 0);
    $client->getUseragent()->ssl_opts(SSL_verify_mode => "SSL_VERIFY_NONE");
    
    # get canvas ID
    print "Getting canvas ID for canvas login $canvas_login\n" if ($debug);
    $client->GET("/api/v1/accounts/1/users?access_token=$canvas_token&search_term=$canvas_login");
    my $response = from_json($client->responseContent());
    print Dumper $response if ($debug);
    my $canvas_user_id = $response->[0]->{id};

    # Get enrollments for that canvas user ID
    print "Getting enrollments for canvas user id: $canvas_user_id\n" if ($debug);
    $client->GET("/api/v1/users/$canvas_user_id/enrollments?access_token=$canvas_token");
    $response = from_json($client->responseContent());
    print Dumper $response if ($debug);
   	
    my $canvas_courseid; 
    my $enrollment_id;
    foreach my $enrollment (@$response) {
        # get name of course by course ID
	$enrollment_id = $enrollment->{id};
    	$client->GET("/api/v1/accounts/1/courses/$enrollment->{course_id}?access_token=$canvas_token&search_terms=$course");
    	my $course_response = from_json($client->responseContent());
        # then check to see if the course name matches the one passed in
        print "Found $course_response->{id} and $course_response->{name}\n" if ($debug);
        if ($course_response->{name} eq $course) {
            print "$course_response->{name} matches $course, so setting canvas_courseid\n" if ($debug);
            $canvas_courseid = $course_response->{id};
        }
    }

    if ($canvas_courseid) {
        print "******* DELETING course_id [$canvas_courseid] for user [$canvas_user_id]" if ($debug);
	#$client->DELETE("/api/v1/courses/$canvas_courseid/enrollments/$canvas_user_id?access_token=$canvas_token");
	$client->DELETE("/api/v1/courses/$canvas_courseid/enrollments/$enrollment_id?access_token=$canvas_token");	
        print Dumper $client->responseContent() if ($debug);
        print "****** DONE DELETING ***\n" if ($debug);
    }
    
}

sub reconcile_courses {
    my $user = shift;
    my $grouper_courses = shift;
    my $canvas_courses = shift;

    # spin through grouper courses to see which are not in canvas
    my $in_grouper_not_canvas;
    foreach my $grouper_course (keys %$grouper_courses) {
        if (!(exists($canvas_courses->{$grouper_course}))) {
            $in_grouper_not_canvas->{$grouper_course} = 1;
        }
    }

    # spin through canvas courses to see which are not in grouper
    my $in_canvas_not_grouper;
    foreach my $canvas_course (keys %$canvas_courses) {
        if (!(exists($grouper_courses->{$canvas_course}))) {
            $in_canvas_not_grouper->{$canvas_course} = 1;
        }
    }

    # add user to canvas courses
    foreach my $course_add (keys %$in_grouper_not_canvas) {
        enroll_user_in_course($user, $course_add);
    }

    # remove users from canvas courses
    foreach my $course_remove (keys %$in_canvas_not_grouper) {
        remove_user_from_course($user, $course_remove);
    }

}
