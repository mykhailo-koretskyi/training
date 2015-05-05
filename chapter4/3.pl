=begin

Write a Perl script to display the number of files in a directory, the name of which is
specified by a command line argument, for example:
filecount.pl labsolutions
Hints: Use @ARGV to get the command line argument, and the glob function to get
an array of files.
Do not try and distinguish between regular files and directories at this stage (that's for
later).

=cut

use strict;
use warnings;

my @files = glob ("$ARGV[0]/*");
print "Files in $ARGV[0]: ", scalar(@files), "\n";