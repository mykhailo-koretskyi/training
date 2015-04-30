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

@key = keys %machines;
@value = values %machines;

print "\@key: ", (join ':', @key), "\n";
print "\@value: ", (join ':', @value), "\n";