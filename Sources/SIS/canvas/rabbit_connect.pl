#!/usr/local/bin/perl -w
# 
# receive_from_queue.pl, DESCRIPTION
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
($FILE) = q$RCSfile: receive_from_queue.pl,v $ =~ /^[^:]+: ([^\$]+),v $/;

use strict;
use warnings;

$|++;
use AnyEvent;
use Net::RabbitFoot;

my $conn = Net::RabbitFoot->new()->load_xml_spec()->connect(
    host => 'tier-demo-rabbit',
    port => 5672,
    user => 'guest',
    pass => 'guest',
    vhost => '/',
);

my $ch = $conn->open_channel();

$ch->declare_queue(queue => 'TIER101');

print " [*] Waiting for messages. To exit press CTRL-C\n";

sub callback {
    my $var = shift;
    my $body = $var->{body}->{payload};
    print " [x] Received $body\n";
}

$ch->consume(
    on_consume => \&callback,
    no_ack => 1,
);

# Wait forever
AnyEvent->condvar->recv;
