=begin
print "Enter a first name: "; # The prompt (no new-line)
$name = <STDIN>; # Read from standard input
chomp $name; # Remove new-line character

Exercise 1
Using the code fragment above as a guide, prompt the user for a first name then a
last name, storing these in different scalar variables.
Now transfer the contents of both these scalars into an array, using a list assignment.
Print the array with interpolation, not forgetting the new-line character.
Now put the first and last names into a hash, using the keys 'first' and 'last'.
Is it possible to print the hash?
Dump the hash into the array, using a single assignment, and print the array again.
Can you explain what is printed?

=cut

use strict;
use warnings;

print "Enter a first name: ";
my $first = <STDIN>;
chomp $first;

print "Enter a last name: ";
my $last = <STDIN>;
chomp $last;

my @array = ($first, $last);
my %hash;
print "@array\n";

$hash{first} = $first;
$hash{last} = $last;

print %hash, "\n";

@array = %hash;
print "@array\n";
