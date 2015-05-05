
print "A\n";
my $root = "$ENV{SystemRoot}";

opendir my $dh, $root
  or die "$0: opendir: $!";

print "$_\n" foreach grep {-d "$root/$_" && ! /^\.{1,2}$/} readdir($dh);

print "\nB\n";
$path = shift;

while (!defined $path || ! -d $path) {
	print "Directory name: ";
	$path = <STDIN>;
	chomp $path;
}

opendir my $dh, $path or die "$0: opendir: $!";
print "$_\n" foreach grep {-d "$path/$_" && ! /^\.{1,2}$/} readdir($dh);
