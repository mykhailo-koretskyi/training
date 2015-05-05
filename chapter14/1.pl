=begin

Write a Perl script that will perform basic validation and formatting of UK postcodes.
The postcodes are to be read from standard input, or from a file specified at the
command line (use while (<>){…}). The input lines are only to contain a
postcode, with no other text, and blank lines should be ignored.
The format of a UK postcode is as follows:
One or two uppercase alphabetic characters
followed by: between one and two digits
followed by: an optional single uppercase alphabetic character
followed by: a single space
followed by: a single digit
followed by: two uppercase alphabetic characters
Alphabetic characters are those in the range A-Z.
The following formatting is to be done:
Remove all tabs and spaces
Convert to uppercase
Insert a space before the final digit and 2 letters
Print out all the reformatted postcodes, indicating which are in error, and a count of
valid and invalid codes at the end.
Test your program using the file postcodes.txt in the labsolutions directory.
Hints:
Keep it simple; don't try to do all the formatting on one line of code!
Do the formatting first, and then test the resulting pattern
The test file has 25 valid and 5 invalid postcodes.

=cut

use strict;
use warnings;

my $valid = 0;
my $invalid = 0;



while (<>) {
	s/\s+//g;
	if (!$_) {
		next;
	}
	$_ = uc;

	s/\d[A-Z]{2}$/ $&/;

	print "Postcode: ", $_ , " ";

	if (/^[A-Z]{1,2}\d{1,2}[A-Z]? \d[A-Z]{2}$/) {
		$valid++;
		print "valid\n";
	} else {
		$invalid++;
		print "invalid\n";
	}
}

print "Valid postcodes: $valid\nInvalid postcodes: $invalid\n";