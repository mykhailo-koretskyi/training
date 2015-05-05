=begin

(a) Write a program to verify that an input line contains only alpha-numeric
characters.
(b) Modify it to also show the first non alpha-numeric character found.
(c) Further refine your program to show all invalid characters, without using an extra
loop.

=cut

use strict;
use warnings;

while (<>) {
	chomp;
	my @no_valid_chars = split (/\w+/, $_);
	if (scalar(@no_valid_chars)) {
		print "Contain a non alpha-numeric characters, \"@no_valid_chars\"\n";
	} else {
		print "Contains only alpha-numeric characters\n";
	}
}

