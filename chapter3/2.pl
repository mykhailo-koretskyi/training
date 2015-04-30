
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