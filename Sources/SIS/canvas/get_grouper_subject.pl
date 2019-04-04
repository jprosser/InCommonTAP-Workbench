#!/usr/local/bin/perl -w
# 
# get_grouper_subject.pl, DESCRIPTION
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
($FILE) = q$RCSfile: get_grouper_subject.pl,v $ =~ /^[^:]+: ([^\$]+),v $/;

use strict;
use warnings;
use Data::Dumper;
use JSON;
use REST::Client;
use MIME::Base64;

my $uid = shift;

print "Searching for: $uid\n";

my $client = REST::Client->new();
$client->setHost('http://tier-demo-grouper:8080');
$client->setTimeout(10);
my $encoded_auth = encode_base64( 'tjordan' . ":" . '12345' );

$client->GET( "/grouper-ws/servicesRest/json/v2_2_000/subjects/$uid",
    { "Content-Type" => "text/x-json", 'Authorization' => "Basic $encoded_auth" } );

print Dumper $client->responseCode();
print Dumper $client->responseContent();


