=begin

We need to do some maintenance on our list of machines:
%machines = (user1 => 'yogi',
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
Don't type this in! It should be available for you to edit in Ex6.2.pl in the
labsolutions directory.
Without altering the initial definition of the hash, write code that will implement the
following changes:
(a) user15 no longer has a machine assigned
(b) The name of user16's machine is changed to 'Ursa'
(c) user17 is leaving the company, and a new user, user18, will be assigned his
machine
(d) user5, user6, and user7 are all leaving at exactly the same time, but their
machine names are to be stored in an array called @unallocated. Hint: delete
with a slice.
(e) Print a list of each (hint) user, with their machine, in any order. Do not print
users that have no machine defined for them (like user15, for example).
(f) Print a list of unallocated machines, sorted alphabetically.

=cut

use strict;
use warnings;

my %machines = (
	user1 => 'yogi',
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
	user17 => 'greppy'
	);

$machines{user15} = undef;

$machines{user16} = 'Ursa';

$machines{user18} = $machines{user17};
delete $machines{user17};

my @unallocated = delete @machines{'user5', 'user6', 'user7'};

while ((my $key, my $val) = each %machines) {
	if (defined $val) {
		print "$key: $val\n";
	}
}

my @sorted = sort @unallocated;
print "Unallocated machines: @sorted\n";