sub report_error ($) {
	print STDERR scalar(localtime), " Error: @_: $!\n";
	($package, $filename, $line) = caller;
	print STDERR "Package: $package\nFilename: $filename\nLine: $line";
}

$filename = "noexiste.txt";
open (FILE, $filename) || report_error ("Failed to open $filename");
close (FILE) || report_error ("Failed to close $filename");