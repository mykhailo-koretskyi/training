foreach my $dir (split ';', $ENV{path}) {
	if (-d $dir) {
		print "Dir $dir exists.\n";
	} else {
		print "no existe $dir\n.";
	}
}