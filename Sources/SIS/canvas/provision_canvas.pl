#!/usr/bin/perl -w
# 
# provision_canvas.pl, DESCRIPTION
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
($FILE) = q$RCSfile: provision_canvas.pl,v $ =~ /^[^:]+: ([^\$]+),v $/;

use strict;
use REST::Client;
use JSON;
use Net::LDAP;
use Data::Dumper;

my $debug = 1;

my $canvas_url = "https://tier.instructure.com";
my $canvas_token = "10675~b1IIAPh31TCIBMRsmEqLUL436htu5Q7CP8JPMhRncRpKVh9uWYIDxbkCNWN7vSKD";
my $header;

$header->{'Authorization'} = "Bearer: $canvas_token";
$header->{'Content-type'} = "application/json";

my $client = REST::Client->new({
         host => $canvas_url,
         timeout => 10
     });

# disable certificate checking
$client->getUseragent()->ssl_opts(verify_hostname => 0);
$client->getUseragent()->ssl_opts(SSL_verify_mode => "SSL_VERIFY_NONE");

my $ldap_host = "127.0.0.1";
my $ldap_admin = "cn=admin,dc=example,dc=edu";
my $ldap_password = "password";
my $course_groups_dn = "ou=groups,dc=example,dcu=edu";

my $ldap = Net::LDAP->new( $ldap_host, port => 389) or die $@;

my $mesg = $ldap->bind($ldap_admin, password => $ldap_password);


die "unable to bind to ldap: $@\n" if (!(defined($mesg)));

my $course_groups = get_course_groups($course_groups_dn);

foreach my $course_group (@$course_groups) {
    print "About to process enrollments for $course_group\n" if $debug;
    process_enrollments($course_group);
}


sub get_course_groups {
    my $groups_dn = shift;
    print "Fetching Course Groups\n" if $debug;

    my @course_groups;
    push @course_groups,"cn=app:canvas:users,ou=groups,dc=example,dc=edu";
    push @course_groups,"cn=app:canvas:class_cs251,ou=groups,dc=example,dc=edu";
    push @course_groups,"cn=app:canvas:class_cs252,ou=groups,dc=example,dc=edu";
    print "Done fetching course groups\n" if $debug;
    return \@course_groups;
}

sub process_enrollments {
    my $course_group = shift;

    print "processing enrollments for course group: $course_group\n" if $debug;

    # TODO: Add the course to canvas

    my $course_id = add_course_to_canvas($course_group);
    print "COURSE_ID: $course_id\n" if $debug;

    # TODO: Get current members
    print "searching ldap for group: $course_group\n" if $debug;
    $mesg = $ldap->search(base => $course_group,
                          filter => '(objectclass=*)');

    my $entry = $mesg->entry(0);
    my @members = $entry->get_value('member');

    # TODO: Get user details for each member
    
    foreach my $member (@members) {
        # TODO: Validate whether or not the user needs to be added to canvas
        my $member_details = get_member_details($member);
        add_user_to_canvas($member_details);
        # TODO: Add the users to the course
        add_user_to_course($member_details,$course_group,$course_id);
    }
}

sub get_member_details {
    my $member_dn = shift;
    print "Getting member details for $member_dn\n" if $debug;
    $mesg = $ldap->search(base => $member_dn,
                          filter => '(objectclass=*)');
    my $entry = $mesg->entry(0);

    my $member_details;
    
    # TODO: Get name and uid, and set a default password
    my $uid = $entry->get_value('uid');
    $member_details->{user}->{name} = $entry->get_value('cn');
    $member_details->{user}->{skip_registration} = "true";
    $member_details->{pseudonym}->{unique_id} = $uid."\@example.edu";
    $member_details->{pseudonym}->{password} = "password";

    print "Dumping user details..\n" if $debug;
    print Dumper $member_details if $debug;

    return $member_details;

}

sub add_user_to_canvas {
    my $member_details = shift;

    my $json_user = to_json($member_details);
    print "Adding user: $json_user\n" if $debug;
    $client->POST("/api/v1/accounts/1/users?access_token=$canvas_token",$json_user,$header);
    my $response = from_json($client->responseContent());
    print Dumper $response if $debug;
}

sub add_course_to_canvas {
    my $course_group = shift;

    print "Adding course $course_group to Canvas\n" if $debug;

	my ($course_name) = ($course_group =~ m/cn=(.*),ou=groups,dc=example,dc=edu/);

    print "Modified course_name: $course_name\n" if $debug;

	my $course;
	$course->{course}->{name} = $course_name;
	my $json_course = to_json($course);
    print "Adding course: $json_course\n" if $debug;
    $client->POST("/api/v1/accounts/1/courses?access_token=$canvas_token",$json_course,$header);
    my $response = from_json($client->responseContent());
    my $course_id = $response->{id};
    print "*** COURSE_ID: $course_id\n" if $debug;
    print "Returning Course_ID: $course_id\n" if $debug;
    return $course_id;
}

sub add_user_to_course {
    my $member_details = shift;
    my $course_group = shift;
    my $course_id = shift;

    # TODO: Get user's user_id
    my $login_id = $member_details->{pseudonym}->{unique_id};
    $client->GET("/api/v1/accounts/1/users?access_token=$canvas_token&search_term=$login_id");
    my $response = from_json($client->responseContent());
    my $user_id = @$response[0]->{id};

    # TODO: Get Course ID

    #my ($course_name) = ($course_group =~ m/cn=(.*),ou=groups,dc=example,dc=edu/);
    #print "looking for Course Name: $course_name\n" if $debug;
    #$client->GET("/api/v1/accounts/1/courses?access_token=$canvas_token&search_terms=$course_name");
    #$response = from_json($client->responseContent());
    #print $client->responseContent() if $debug;
    #my $course_id = @$response[0]->{id};
    #print "Found Course_ID: $course_id\n" if $debug;

    # TODO: Add user to course
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

