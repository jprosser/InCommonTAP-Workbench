#!/usr/local/bin/perl

use strict;
use warnings;

my $fullCourseName = 'basis.courses.MATH101';

my ($coursename) = $fullCourseName =~ m/^basis\.courses\.(.*)$/;

print "Coursename: $coursename\n";
