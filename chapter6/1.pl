=begin

Write a program that uses a foreach (or for) loop and writes 50 lines of output: the
first containing a single `X', the second containing two `XX', etc. Hint: for the list of
values, use a range 1..50.

=cut

use strict;
use warnings;

for my $amount (1..50) {
	print 'X' x $amount, "\n";
}