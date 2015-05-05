package PrintSupport;

use Exporter;
BEGIN
{
	@ISA = qw(Exporter);
	@EXPORT_OK = qw(print_HP print_Xerox print_Apple print_fax);
}



sub print_HP {
	print "Print HP\n";
}
sub print_Xerox {
	print "Print Xerox\n";
}
sub print_Apple {
	print "Print Apple\n";
}
sub print_fax {
	print "Print fax\n";
}

1;