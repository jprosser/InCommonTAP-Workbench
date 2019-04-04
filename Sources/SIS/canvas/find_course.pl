#!/usr/local/bin/perl -w
# 
# canvas_test_user.pl, DESCRIPTION
 
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
($FILE) = q$RCSfile: canvas_test_user.pl,v $ =~ /^[^:]+: ([^\$]+),v $/;

use strict;
use REST::Client;
use JSON;
use Data::Dumper;

my $course = shift;

my $canvas_url = "https://tier.instructure.com";
my $canvas_token = "10675~b1IIAPh31TCIBMRsmEqLUL436htu5Q7CP8JPMhRncRpKVh9uWYIDxbkCNWN7vSKD";

my $client = REST::Client->new({
         host => $canvas_url,
         timeout => 10
     });

# disable certificate checking
$client->getUseragent()->ssl_opts(verify_hostname => 0);
$client->getUseragent()->ssl_opts(SSL_verify_mode => "SSL_VERIFY_NONE");

$client->GET("/api/v1/accounts/1/courses?access_token=$canvas_token&name=$course");
my $response = from_json($client->responseContent());
print Dumper $response;
my $id = @$response[0]->{id};
print "ID: $id\n";



