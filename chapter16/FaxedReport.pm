package FaxedReport;
use Fax;
use Report;
BEGIN {
	@ISA = ('Fax', 'Report');
}
sub new {
	my $class = shift;
	return bless{}, $class;
}
sub display {
	return Report::display();
}

1;