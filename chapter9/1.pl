my $lines;
my $bytes;

while (<>) {
	$lines++;
	$bytes += length;
}

print "Lines: $lines, bytes: $bytes\n";