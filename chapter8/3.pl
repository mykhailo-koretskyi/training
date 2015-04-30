@numeros = ();
$numero = '';
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
