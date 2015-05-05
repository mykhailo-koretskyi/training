=begin

Write a Perl program that emulates the high-street bank mechanism for checking a
PIN. Keep taking input from the keyboard (<STDIN>) until it is identical to a
password number (hard-coded by you in the program).
Restrict the number of attempts to 3 (be sure to use a variable for that, we may wish
to change it later), and output a suitable message for success and failure. Be sure to
include the number of attempts in the message.
Just to keep things interesting, give the PIN a leading zero.

=cut

use strict;
use warnings;

my $pin = '0123';
my $limit = 3;
my $counter = 0;

while ( $counter < $limit) {
	print "Please enter your PIN\t";
	my $input = <STDIN>;
	chomp $input;
	$counter++;
	if ($input eq $pin) {
		last;
	}
}

if ( $input ne $pin) {
	print "You had $limit tries and failed!\n";
} else {
	print "Well done, you remembered it!\n";
	print "... and only after $counter attempts\n";
}
