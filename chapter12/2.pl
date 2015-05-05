=begin

This exercise illustrates the use of the %INC hash in identifying the actual module
files in use. Write a program that includes a number of modules (for example, Carp,
CGI, sigtrap) and print the %INC hash. Examine the results, noting that there may be
more modules listed than you included in your program.

=cut

use strict;
use warnings;
use Carp;
use CGI;
use sigtrap;

for my $key (sort keys %INC) {
	print "$key: $INC{$key}\n";
}