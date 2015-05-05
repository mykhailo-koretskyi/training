=begin

· Create a hash with several key/value pairs (‘cut and paste’ one from a previous
exercise if you like).
· Now create an array from the keys, and another from the values.
· Print these two arrays with a colon (‘:’) between each value or key (TMTOWTDI).

=cut

use strict;
use warnings;

my %machines = (user1 => 'yogi',
	user2 => 'booboo',
	user3 => 'rupert',
	user4 => 'teddy',
	user5 => 'care',
	user6 => 'winnie',
	user7 => 'sooty',
	user8 => 'padders',
	user9 => 'polar',
	user10 => 'grizzly',
	user11 => 'baloo',
	user12 => 'bungle',
	user13 => 'fozzie',
	user14 => 'huggy',
	user15 => 'barnaby',
	user16 => 'hair',
	user17 => 'greppy');

my @key = keys %machines;
my @value = values %machines;

print "\@key: ", (join ':', @key), "\n";
print "\@value: ", (join ':', @value), "\n";