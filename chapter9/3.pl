
die "Usage: $0 filename line-number\n" if @ARGV < 2;

my $file = shift @ARGV;

open (FILE, $file) || die "Unable to open $file: $!";
my @lines = <FILE>;
close FILE;
for my $lineno (@ARGV) {
	if ($lineno < 1 || $lineno > @lines) {
		print STDERR "Line number $lineno is invalid\n";
	} else {
		print "$lineno: $lines[$lineno-1]";
	}
}