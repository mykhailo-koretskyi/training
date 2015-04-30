#!/usr/bin/perl -w

print "Enter a first name: ";
$first = <STDIN>;
chomp $first;

print "Enter a last name: ";
$last = <STDIN>;
chomp $last;

@array = ($first, $last);

print "@array\n";

$hash{first} = $first;
$hash{last} = $last;

print %hash, "\n";

@array = %hash;
print "@array\n";