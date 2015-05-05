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

%hash = (
	John => "Norman",
	Robert => "Anson",
	Christopher => "Fowler",
	Robert => "Harris",
	Dan => "Simmons"
	);

print "Enter a fisrt name: ";
$first = <STDIN>;
chomp $first;
print "Fisrt name $first, and last $hash{$first}\n";
