while (1) {
	print "Perl > ";
	my $line = <STDIN>;

	if (index($line, 'unlink') == -1) {
		eval $line;
	} else {
		$@ = "This command is not allowed!\n";
	}
}