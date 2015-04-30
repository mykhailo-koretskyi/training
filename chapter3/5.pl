@names = qw(yogi booboo grizzly rupert baloo teddy bungle care);
$names[4] = 'greppy';
$names[@names] = 'fozzie';

($one, $two, $three, $four) = @names[-4, -3, -2, -1];

print "$one $two $three $four\n";

($ascalar, @new) = @names[0, 1, 2, 3];

print "$ascalar @new\n";

@names = (@names, @new);

print "@names\n";