=begin

Using an editor, construct a text file which has a blank line after each line of text, for
example:
1
22
333
4444
Note that there is a blank line at the end. Now, using the Input Line Separator
variable $/ and chomp, read this file, then print it without the blank lines, and with
">>>" at the start of each line and "<<<" at the end, for example:
>>>1<<<
>>>22<<<
>>>333<<<
>>>4444<<<

=cut

use strict;
use warnings;

my $filename = shift;

open (FILE, $filename);

$/ = "\n\n";

while (<FILE>) {
	chomp;
	print ">>>$_<<<\n";
}
close (FILE);