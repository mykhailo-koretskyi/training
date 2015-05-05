=begin

Warnings and error messages from perl include the line number. Some editors do
not show line numbers, so we need a small utility that will print specific lines from a
script.
The utility is to take a filename as its first command line argument, then a list of line
numbers as the second and subsequent arguments. If an invalid filename is
supplied, or no line number is given, output an error message to STDERR.
The line numbers supplied on the command line could be in any order. If a line
number is out of range, output an error message to STDERR, but be sure to process
each line number supplied.
Output the required lines, prefixed with its line number.
Important notes (and hint):
 Our perl scripts are relatively small, and can easily fit into memory.
 The line numbers reported by perl start from 1.
Test using one of your own scripts. Since you never have any errors in your scripts ;-
) you may have to introduce some, for example $x = $y (where $y has not been
defined) will produce a warning.

=cut

use strict;
use warnings;

die "Usage: $0 filename line-number\n" if @ARGV < 2;

my $file = shift @ARGV;

open (FILE, $file) || die "Unable to open $file: $!";
my @lines = <FILE>;
close FILE;
for my $lineno (@ARGV) {
	if ($lineno < 1 || $lineno > @lines) {
		print STDERR "Line number $lineno is invalid\n";
	} else {
		print "$lineno: $lines[$lineno-1]";
	}
}