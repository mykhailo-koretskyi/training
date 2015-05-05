=begin

a. Using the Perl grep function, print a list of sub-directories (not files). Hint:
Remember Globbing?
Normally the script is to list sub-directories in the /etc directory, but if run on
Microsoft Windows it is to list sub-directories in the System Root directory
(C:\WINNT on Windows NT 4.0 and Windows 2000, C:\WINDOWS on Windows
XP). Hints: The built-in variable $^O is set to "MSWin32" on Microsoft Windows,
and the System Root directory name can be obtained from the environment
variable %SystemRoot% ($ENV{SystemRoot}).
There are several solutions to this exercise, not all involving the use of grep
(map is an alternative). Can you achieve this in a single line of code?
b. Now take your directory name from a command line argument. If the user does
not supply an argument, or it is not a valid directory name, prompt for it. Note: for
the purposes of this exercise, do not worry about sub-directory names with
imbedded spaces.
c. The Glob output retains the specified directory name as a prefix. Further refine
your script by removing it for printing. For example, /etc/sysconfig becomes
sysconfig. Test this with the directory /etc/X11 (C:\WINNT\System32 on
Microsoft Windows NT and 2000, or C:\Windows\System32 on Microsoft
Windows XP).

=cut

use strict;
use warnings;

print "A\n";
my $root = "$ENV{SystemRoot}";

opendir my $dh, $root
  or die "$0: opendir: $!";

print "$_\n" foreach grep {-d "$root/$_" && ! /^\.{1,2}$/} readdir($dh);

print "\nB\n";
my $path = shift;

while (!defined $path || ! -d $path) {
	print "Directory name: ";
	$path = <STDIN>;
	chomp $path;
}

opendir my $dh, $path or die "$0: opendir: $!";
print "$_\n" foreach grep {-d "$path/$_" && ! /^\.{1,2}$/} readdir($dh);
