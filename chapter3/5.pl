=begin
This question is concerned with array slices.
Using the array created in the previous exercise:
· In one statement, copy the last four elements of the array into a list of
scalar variables, one for each element (you can call the scalars
anything you like). Print the four scalars.
· In one statement, copy the first element of the array into a scalar and
the next three elements into a new array called @new. Print the
scalar and the new array.
· In one statement, add @new onto the end of the array (this does not
involve a slice), then print the result.
=cut

use strict;
use warnings;

my @names = qw(yogi booboo grizzly rupert baloo teddy bungle care);
$names[4] = 'greppy';
$names[@names] = 'fozzie';

my ($one, $two, $three, $four) = @names[-4, -3, -2, -1];

print "$one $two $three $four\n";

my ($ascalar, @new) = @names[0, 1, 2, 3];

print "$ascalar @new\n";

@names = (@names, @new);

print "@names\n";
