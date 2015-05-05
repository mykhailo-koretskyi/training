package Fax;
use PrintSupport;
BEGIN {
	@ISA = ('PrintSupport');
}
sub new {
	my $class = shift;
	return bless{}, $class;
}
sub setup {
	print "Fax: Call setup()\n";
}
sub display {
	print "Fax: Call display()\n";
}

1;
