%machines = (
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

@unallocated = delete @machines{user5, user6, user7};

while (($key, $val) = each %machines) {
	if (defined $val) {
		print "$key: $val\n";
	}
}

@sorted = sort @unallocated;
print "Unallocated machines: @sorted\n";