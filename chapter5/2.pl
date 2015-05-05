=begin

Write a program to extract the directories from the PATH environment variable. Print
the number of directories, and their names. The values of each environment variable
are available in a hash, %ENV, with the key as the variable name, for example,
$ENV{'PATH'}.
If you print the names of the directories in one long line, they can be difficult to read.
Can you think of a way of printing each directory on a different line? TMTOWTDI
On UNIX:
The PATH environment variable uses a colon (:) as a directory separator,
and can be displayed on the command line using:
echo $PATH
On Microsoft Windows:
The PATH environment variable uses a semicolon (;) as a directory
separator, and can be displayed on the command line using:
path

=cut

use strict;
use warnings;

my $path = $ENV{path};
my @dirs = split(";", $path);

print "Number of directories: ", scalar(@dirs), "\n";

$" = "\n";
print "Directories:\n@dirs\n";