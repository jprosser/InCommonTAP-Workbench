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
 
my $channel = 1;
my $exchange = "amq.topic";  # This exchange must exist already
my $routing_key = "basis.courses.TIER101";
 
my $mq = Net::AMQP::RabbitMQ->new();
$mq->connect("tier-demo-rabbit", { user => "guest", password => "guest" });
$mq->channel_open($channel);
 
# Declare queue, letting the server auto-generate one and collect the name
my $queuename = "TIER101";

#$mq->queue_declare($channel, "");
 
# Bind the new queue to the exchange using the routing key
#$mq->queue_bind($channel, $queuename, $exchange, $routing_key);
$mq->queue_bind($channel, $queuename, $exchange, $routing_key);

# Request that messages be sent and receive them until interrupted
$mq->consume($channel, $queuename);
 
while ( my $message = $mq->recv(0) )
  {
    print "Received message:\n";
    print Dumper($message);
  }
 
$mq->disconnect();
