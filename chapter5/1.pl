=begin

Create an array of 5 numbers. Print the numbers, each separated (join’ed?) by a
semicolon and blank.

=cut

use strict;
use warnings;

my @numbers = (1, 2, 3, 4 ,5);
print "Numbers: ", join(";", @numbers), "\n";