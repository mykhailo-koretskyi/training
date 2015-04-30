$salida = '';
while ($salida ne 'quit') {
	print "Entar a word, 'quit' to stop: ";
	$salida = <STDIN>;
	chomp $salida;
	print $salida x 5, "\n";
}