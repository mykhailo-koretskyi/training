=begin

Develop a program to find the number of lines and characters in a file. You may wish
to create a small text file using your editor in order to test your code, or use the
supplied ‘words’ file. The filename is to be passed on the command line, not from
<STDIN>, so read from ARGV with:
while (<>)
or
while (<ARGV>)
Make sure you print an error message and exit if the user forgets to supply a
filename.
On Microsoft Windows the character count will be less than that reported by
Windows Explorer. The reason is that Windows records are terminated by "\r\n", but
Perl removes the "\r" before you see it! Therefore, add one to your character count
each time you read a line.

=cut

use strict;
use warnings;

my $lines;
my $bytes;

while (<>) {
	$lines++;
	$bytes += length;
}

print "Lines: $lines, bytes: $bytes\n";