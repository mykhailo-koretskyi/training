my $filename = shift;

open (FILE, $filename);

$/ = "\n\n";

while (<FILE>) {
	chomp;
	print ">>>$_<<<\n";
}
close (FILE);