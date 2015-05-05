sub print_args ($) {
	print "\nN Args:", scalar(@_), "\nFirst: $_[0]";
}


my $a = 1;
my $b = 2;
my @arr = (5,2,3,4);
my %has = (primero => 1,segundo => 2, tercero =>3);

print_args ($a);
#print_args ($b, $a);
print_args (@arr);
print_args (%has);

# 1 scalar
# 2 scalar
# array 4 scalar
# hash 3 key/value