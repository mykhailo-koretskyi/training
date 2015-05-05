=begin

This exercise tests your understanding of the loop variable in a foreach loop, so try
this without running the code. Explain the difference between the following code
fragments. What will be printed in each case?
(a)
print "\n(a):\n";
my $counter = 0;
@array = (1..10);
for $counter (@array)
{
print ++$counter, " "
}
print "\nThe whole array:\n@array\n";
print "\$counter: $counter\n";
(b)
print "\n(b):\n";
my $counter = 0;
@array = (1..10);
for $counter (1..10)
{
print ++$counter, " "
}
print "\nThe whole array:\n@array\n";
print "\$counter: $counter\n";
Now run the code in labsolutions/08AdvancedFlowControl/Ch8Ex1.pl to see
if you are correct (or look at the solution).

=cut

use strict;
use warnings;

print "\n(b):\n";
my $counter = 0;
my @array = (1..10);
for $counter (1..10)
{
	print ++$counter, " "
}
print "\nThe whole array:\n@array\n";
print "\$counter: $counter\n";