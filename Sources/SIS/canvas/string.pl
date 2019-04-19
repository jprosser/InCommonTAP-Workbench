#!/usr/bin/perl -w
# 
# string.pl, DESCRIPTION
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
($FILE) = q$RCSfile: string.pl,v $ =~ /^[^:]+: ([^\$]+),v $/;

use strict;
my $long = "cn=ref:affiliation:community,ou=groups,dc=example,dc=edu";
print "long: $long\n";
my ($short) = ($long =~ /cn=(.*),ou=groups,dc=example,dc=edu/);
print "short: $short\n";
