=begin

When a number of programmers are working on the same application, we often need
a standard way of reporting an error. A subroutine is ideal for this: it a single point to
maintain and modify as the need for further diagnostics arise.
Write and test a basic error handing subroutine called report_error. It is to take a
single parameter only - a scalar containing an error message string. Print the error
message, together with a date/time stamp (scalar(localtime)), and the current
error message $!, to STDERR.
It would be useful if our subroutine also printed the Perl script line number which
called it. This may be obtained using the caller function, for example:
($package, $filename, $line) = caller;
Test your subroutine by calling it after trying to open a file which does not exist, for
example:
$filename = "some_non_existent_file";
open (OOPS, $filename) ||
report_error ("Failed to open $filename");
and on trying to close an invalid file handle.

=cut

use strict;
use warnings;

sub report_error ($) {
	print STDERR scalar(localtime), " Error: @_: $!\n";
	my ($package, $filename, $line) = caller;
	print STDERR "Package: $package\nFilename: $filename\nLine: $line";
}

my $filename = "noexiste.txt";
open (FILE, $filename) || report_error ("Failed to open $filename");
close (FILE) || report_error ("Failed to close $filename");