=begin

(a) Create a subroutine without a prototype. Make it print the number of arguments,
and the value of its first argument. Call it with:
· a scalar
· two scalars
· an array with 4 elements
· a hash with 3 key/value pairs
(b) Now add a prototype to accept a single scalar. Call it again with the same set of
arguments and explain what happens.
(c) Remove any lines that generate errors, then run the program again.

=cut

use strict;
use warnings;

sub print_args ($) {
	print "\nN Args:", scalar(@_), "\nFirst: $_[0]";
}


my $a = 1;
my $b = 2;
my @arr = (5,2,3,4);
my %has = (primero => 1,segundo => 2, tercero =>3);

print_args ($a);
#print_args ($b, $a);
print_args (@arr);
print_args (%has);

# 1 scalar
# 2 scalar
# array 4 scalar
# hash 3 key/value