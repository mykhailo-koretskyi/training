#!/usr/bin/perl -w

@numbers = (1, 5, 9, 3.14159, 2);

print "with interpolation @numbers\n";
print "without interpolation ", @numbers, "\n";

$" = "\n";
print "@numbers\n";