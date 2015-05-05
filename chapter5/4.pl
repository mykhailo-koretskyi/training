=begin

Take a filename (see below), and split it into the individual elements of the path,
storing the result into an array. Print the array as a whole, then the first and last
elements separately.
What is the first element, and why?
On UNIX use:
/usr/local/lib/locale/US_C.C/messages.dat
On Microsoft Windows use:
\Program Files\Microsoft Visual
Studio\VC98\Bin\Rebase.exe
It does not matter if these files do not exist!
If you did this exercise on UNIX, and feel up to a challenge, try the Windows file
name!

=cut

use strict;
use warnings;

my $filename = '\\Program Files\\Microsoft Visual Studio\\VC98\\Bin\\Rebase.exe';
my $delimiter = '\\\\';

my @parts = split /$delimiter/, $filename;

print "@parts\n";
print "First element: <$parts[0]>, Last element: $parts[-1]\n";