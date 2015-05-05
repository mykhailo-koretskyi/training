=begin

Write a program that continually prompts the user for a number until the user enters
'quit'. Collect these numbers in an array, and print:
· All the numbers in the array
· How many numbers in the array
· The sum of all the numbers
· The average of all the numbers
· The largest and smallest number
You should not perform any computations while the program is still prompting for
numbers.

=cut

use strict;
use warnings;

my @numeros = ();
my $numero = '';
while ($numero ne 'quit') {
	print "Enter a number or 'quit' to end: ";
	$numero = <STDIN>;
	chomp $numero;
	last if ($numero eq 'quit');
	push @numeros, $numero;
}

my ($sum, $min, $max) = (0, $numeros[0], 0);

foreach my $num (@numeros) {
	$sum += $num;
	$min = $num if ($min > $num);
	$max = $num if ($max < $num);
}

print "All numbers: @numeros\n";
print "numbers: ", scalar(@numeros), "\n";
print "Sum = $sum\n";
print "Average = ", $sum / scalar(@numeros), "\n";
print "Largest = $max\n";
print "Smallest = $min\n";
