=begin
Create a hash that contains the following first-name => last-name pairs:
John Norman
Robert Anson
Christopher Fowler
Robert Harris
Dan Simmons
Now add code to prompt for a first name. Use the reply to obtain the last name from
the hash, and print the full name.
What happened to the common first names (Robert)? Hint: try swapping them
around.
=cut

use strict;
use warnings;

my %hash = (
	John => "Norman",
	Robert => "Anson",
	Christopher => "Fowler",
	Robert => "Harris",
	Dan => "Simmons"
	);

print "Enter a fisrt name: ";
my $first = <STDIN>;
chomp $first;
$first = "\u$first";
print "First name $first, and last $hash{$first}\n";
