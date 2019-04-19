#!/usr/bin/perl -w
# 
# gen_seed.pl, DESCRIPTION
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
($FILE) = q$RCSfile: gen_seed.pl,v $ =~ /^[^:]+: ([^\$]+),v $/;

use strict;

while (<>) {
    chomp;
    my ($uid,$fname,$lname,$email,$pwd) = split(/,/);
    my $base = "ou=people,dc=example,dc=edu";

    print "dn: uid=$uid,$base\n";
    print "objectclass: organizationalPerson\n";
    print "objectclass: person\n";
    print "objectclass: top\n";
    print "objectclass: inetOrgPerson\n";
    print "objectclass: eduPerson\n";
    print "givenName: $fname\n";
    print "uid: $uid\n";
    print "sn: $lname\n";
    print "cn: $fname $lname\n";
    print "userPassword: $pwd\n";
    print "\n";


}
