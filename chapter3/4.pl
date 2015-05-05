=begin
Create an array from a list of eight computer names:
yogi, booboo, grizzly, rupert, baloo, teddy, bungle, care
now write code to alter the array:
i. Change 'baloo' to 'greppy'
ii. Add 'fozzie' to the end of the array
iii. Print the resulting array, and its length
=cut

use strict;
use warnings;

my @names = qw(yogi booboo grizzly rupert baloo teddy bungle care);

$names[4] = 'greppy';

$name[scalar(@names)] = 'fozzie';

print "@names\nlength: ", scalar(@names), "\n";
