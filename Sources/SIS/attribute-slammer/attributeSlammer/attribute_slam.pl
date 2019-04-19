#!/usr/bin/perl -w
# $Id$
#
# Slams attributes on given stems in the config file.
#
# Author: James Babb
# $Date: 2016-07-05 11:43:20 -0500 (Tue, 05 Jul 2016) $
#
use strict;
use warnings;
use Data::Dumper;
use JSON;
use REST::Client;
use YAML qw/LoadFile Dump/;
use Getopt::Long;
use MIME::Base64;

#
# 1. Pull in the config
# 2. Set up the environment
# 3. for each slam:
#   a. build out request to retrieve matching groups
#   b. retrieve list of groups
#   c. for each group:
#       i. build out request to see if attribute already set with value
#       ii. if value is already set:
#           - next;
#       iii. else:
#           - build out request to slam attribute
#           - set attribute with value
#
#

my $config = LoadFile('attribute_slam.yaml');
my $pw     = LoadFile('attribute_slam.pw');

# track exit code. Change to something not 0 if a failure but we don't need to hard fail.
my $exit_code = 0;

my $DEBUG = $config->{debug};

print Dumper($config) . "\n" . Dumper($pw) . "\n\n" if ($DEBUG);

my $client = REST::Client->new();
$client->setHost( $config->{grp_ws_endpoint} );
$client->setTimeout( $config->{timeout} );

my $encoded_auth = encode_base64( $config->{grp_ws_user} . ":" . $pw->{password} );

foreach my $item ( @{ $config->{list} } ) {

    logit( "Working on " . $item->{stem} );

    my %find_groups = (
        "WsRestFindGroupsLiteRequest" => {
            "groupName"       => $item->{stem},
            "stemName"        => $item->{stem},
            "queryFilterType" => "FIND_BY_GROUP_NAME_APPROXIMATE"
        }
    );

    # TODO: because we include the stem, will this match on like uw:domain:AWS and uw:domain:AWS2?

    my $find_groups_json = encode_json( \%find_groups );

    logit("Sending find groups request with: $find_groups_json \n\n-------\n\n") if ($DEBUG);

    $client->POST( $config->{grp_ws_rest_groups},
        $find_groups_json,
        { "Content-Type" => "text/x-json", 'Authorization' => "Basic $encoded_auth" } );

    logit( 'Response: ' . $client->responseContent() . "\n" )     if ($DEBUG);
    logit( 'Response status: ' . $client->responseCode() . "\n" ) if ($DEBUG);

    if ( $client->responseCode() != 200 ) {
        logit("Did not get back a valid search for groups... Skipping\n");
        $exit_code = 255;
        next;
    }

    my $groups_to_process;

    eval { $groups_to_process = decode_json( $client->responseContent() ); };

    if ( !defined($groups_to_process) ) {
        logit("Did not get valid JSON from Grouper... Skipping\n");
        $exit_code = 255;
        next;
    }

    foreach my $group ( @{ $groups_to_process->{WsFindGroupsResults}->{groupResults} } ) {
        logit( "Checking " . $group->{name} );

        my %find_attr = (
            "WsRestGetAttributeAssignmentsLiteRequest" => {
                "attributeAssignType"             => "group",
                "includeAssignmentsonAssignments" => "T",
                "wsOwnerGroupName"                => $group->{name},
                "wsAttributeDefNameName"          => $item->{attribute_name}
            }
        );

        my $find_attr_json = encode_json( \%find_attr );

        logit("Sending find attributes request with: $find_attr_json \n\n-------\n\n") if ($DEBUG);

        $client->POST( $config->{grp_ws_rest_attributes},
            $find_attr_json,
            { "Content-Type" => "text/x-json", 'Authorization' => "Basic $encoded_auth" } );

        logit( 'Response: ' . $client->responseContent() . "\n" )     if ($DEBUG);
        logit( 'Response status: ' . $client->responseCode() . "\n" ) if ($DEBUG);

        if ( $client->responseCode() != 200 ) {
            logit("Did not get back a valid search for attributes... Skipping group....\n");
            $exit_code = 255;
            next;
        }

        my $attribute_search;

        eval { $attribute_search = decode_json( $client->responseContent() ); };

        if ( !defined($attribute_search) ) {
            logit("Did not get valid JSON from Grouper... Skipping group...\n");
            $exit_code = 255;
            next;
        }

        my $found = 0;

        foreach my $attr (
            @{ $attribute_search->{WsGetAttributeAssignmentsResults}->{wsAttributeAssigns} } )
        {
            if ( $attr->{attributeDefNameName} eq $item->{attribute_name} ) {
                foreach my $value ( @{ $attr->{wsAttributeAssignValues} } ) {
                    if ( $value->{valueSystem} eq $item->{attribute_value} ) {
                        logit(
                            "Attribute $item->{attribute_name} already has value $item->{attribute_value} for group $group->{name}"
                        ) if ($DEBUG);
                        $found = 1;
                        last;
                    }
                }
                logit(
                    "Attribute $item->{attribute_name} has a value but not correct value for group $group->{name}"
                ) if ( !$found && $DEBUG );
            }
        }

        if ( !$found ) {
            logit(
                "Need to set $item->{attribute_name} : $item->{attribute_value} for $group->{name}"
            );

            my %slam_attr = (
                "WsRestAssignAttributesLiteRequest" => {
                    "attributeAssignOperation"      => "assign_attr",
                    "attributeAssignType"           => "group",
                    "attributeAssignValueOperation" => "add_value",
                    "valueSystem"                   => $item->{attribute_value},
                    "wsAttributeDefNameName"        => $item->{attribute_name},
                    "wsOwnerGroupName"              => $group->{name}
                }
            );

            my $slam_attr_json = encode_json( \%slam_attr );

            $client->POST( $config->{grp_ws_rest_attributes},
                $slam_attr_json,
                { "Content-Type" => "text/x-json", 'Authorization' => "Basic $encoded_auth" } );

            logit( 'Response: ' . $client->responseContent() . "\n" )     if ($DEBUG);
            logit( 'Response status: ' . $client->responseCode() . "\n" ) if ($DEBUG);

            if ( $client->responseCode() != 200 ) {
                logit(
                    "Could not add $item->{attribute_name} : $item->{attribute_value} for $group->{name}. Response: "
                      . $client->responseContent()
                      . "\n\n--------\n\n" );
                $exit_code = 255;
            }
            else {
                logit("Added $item->{attribute_name} : $item->{attribute_value} to $group->{name}");
            }

        }

    }

}

exit $exit_code;

# Log a message to the log file specified in the config file.
sub logit {
    my $msg = shift;

    # Timestamp
    my $tstamp = '';
    my ( $sec, $min, $hr, $day, $mon, $year ) = localtime;
    $tstamp =
      sprintf( "%04d-%02d-%02d %02d:%02d:%02d", 1900 + $year, $mon + 1, $day, $hr, $min, $sec );
    my $file = $config->{logfile};
    open( my $fh, ">>", $file ) || die "Unable to open log file $file: $!";
    print $fh "$tstamp: $msg\n";
    close($fh);
    print STDERR "$tstamp: $msg\n" if ($DEBUG);
}
