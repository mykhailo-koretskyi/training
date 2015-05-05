=begin

This exercise is to show how using a module can affect your entire program.
The task here is to write a module that will cause all output from every print
function to be automatically piped to the external program ‘more’.
The caller should not need to explicitly call one of the module subroutines to use this
feature.
Hints: Create a module called 'more.pm'
In the module’s BEGIN block:
Open a pipe to the external program 'more' (remember pipes from
the 'Running Processes' Chapter)
Override the default file handle with the pipe handle using select
(from the 'Input and Output' chapter), saving the returned handle in a
global scalar. This provides the functionality of the module.
In the module’s END block:
Using select, return the default handle to its original setting.
Close the pipe handle.
Test this by writing a simple Perl program that lists several files to the screen, using
your module.
Note: This will not work on Microsoft Windows 95/98/Me because ‘more’ is a
command.com built-in. There are similar problems on Windows NT, but Windows
2000 and XP should be OK.

=cut

use strict;
use warnings;
use more;

my $current_file = "";
my $files = 0;

while (<>) {
	if ($ARGV ne $current_file) {
		print "\n", "-" x 20, " ", $ARGV, " ", "-" x 20, "\n";
		$current_file = $ARGV;
		$files++;
	}
	print;
}