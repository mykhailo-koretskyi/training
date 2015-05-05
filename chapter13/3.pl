@names = glob('*.pl');

foreach $name (@names) {
	$files{$name} = -s $name;
}

foreach $name (sort {$files{$a} cmp $files{$b}} keys %files ) {
	print "$name: $files{$name}\n";
}