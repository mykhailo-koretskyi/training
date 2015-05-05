use more;
$current_file = "";
$files = 0;

while (<>) {
	if ($ARGV ne $current_file) {
		print "\n", "-" x 20, " ", $ARGV, " ", "-" x 20, "\n";
		$current_file = $ARGV;
		$files++;
	}
	print;
}