=begin

Write a Perl program which will list all the Perl scripts (*.pl) in the current directory
sorted by size.
There are several ways to tackle this, here is one approach:
Construct a hash of file names with their sizes.
Hint: Don’t use the file size as a key
(although that would make the problem simpler)!
Hint: The simplest way to get a list of files is to use a GLOB construct.
Hint: The simplest way to get the size of a file is to use –s filename.
Sort the hash, using a custom sort, and print it.

=cut

use strict;
use warnings;

my @names = glob('*.pl');
my %files;
foreach my $name (@names) {
	$files{$name} = -s $name;
}

foreach my $name (sort {$files{$a} cmp $files{$b}} keys %files ) {
	print "$name: $files{$name}\n";
}