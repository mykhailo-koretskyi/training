=begin

The object of this exercise is to construct an array of arrays which stores details of
files. The array is to be constructed as follows:
index 0 1 2 3
0 Filename Mode Size Date last modified
1 Filename Mode Size Date last modified
2 Filename Mode Size Date last modified
n etc…
The Perl stat command takes a filename (or handle) as an argument, and returns a
list of file attributes. The elements of interest are:
element index value
2 mode, which includes type and permissions as a bit mask
7 size in bytes
9 time last modified (in seconds since epoc)
Obtain a list of filenames, we suggest all the Perl scripts in the current directory using
glob. Now call stat on each one (stat filename), storing the required data in a
multi-dimensional array.
Finally print the resulting array of arrays. Some formatting is required for the raw
data, as follows:
mode convert the permissions to octal using:
printf "%lo", mode & 07777
time last modified convert to a readable date/time using:
scalar(localtime(mtime))
You might find that printf is the simplest way of printing each record. Your output
should look something like this:
Ch16Ex1.pl 755 526 Tue Feb 11 13:22:54 2003
Ch16Ex2.pl 755 308 Thu Sep 4 10:58:11 2003
Ch16Ex3.pl 755 366 Tue Feb 11 13:22:54 2003
Ch16Ex4.pl 755 695 Tue Feb 11 13:22:54 2003
Ch16OptEx1.pl 755 346 Tue Feb 11 13:22:54 2003
Ch16OptEx1a.pl 755 351 Tue Feb 11 13:22:54 2003
Ch16OptEx2.pl 755 656 Tue Feb 11 13:22:54 2003
Template.pl 755 627 Tue Feb 11 13:22:54 2003
Note that on Microsoft Windows the permissions will probably be 666 (rw-rw-rw-).

=cut

use strict;
use warnings;

my @files;
for my $file (<*>) {
	my @set = ($file, (stat($file))[2, 7, 9]);
	push @files, \@set;
}

for my $file (@files) {
	printf "%-10s %lo %5d %2s\n", $file->[0], $file->[1] & 07777, $file->[2], scalar(localtime($file->[3]));
}