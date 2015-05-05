package Report;
use PrintSupport;
BEGIN {
	@ISA = ("PrintSupport");
}
sub new {
	return bless{};
}
sub setup {
	print "Report: Call setup()\n";
}
sub display {
	print "Report: Call display()\n";
}
sub title_page {
	print "Report: Call title_page()\n";
}

1;
