=begin

Sort the list of names below in case insensitive mode, and print the result:

John mark carol Neil bruce Dave anna Julia robert Ted

=cut

use strict;
use warnings;

my @arr = qw(John mark carol Neil bruce Dave anna Julia robert Ted);

my @res = sort {lc($a) cmp lc($b)} @arr;

print join(", ", @res);