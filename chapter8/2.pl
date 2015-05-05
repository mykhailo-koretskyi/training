=begin

Write a Perl program that checks the PATH environment variable ($ENV{'PATH'}).
Check that each entry is actually a directory which exists, and that we have (on UNIX
only) execute access. Print the result of the check for each directory.
Hint: You can save time by using your answer from Chapter 5, Exercise 2, as a
template.

=cut

use strict;
use warnings;

foreach my $dir (split ';', $ENV{path}) {
	if (-d $dir) {
		print "Dir $dir exists.\n";
	} else {
		print "no existe $dir\n.";
	}
}