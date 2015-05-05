package PrintSupport;
sub new {
	return bless{};
}
sub setup {
	print "PrintSupport: Call setup()\n";
}
sub layout {
	print "PrintSupport: Call layout()\n";
}
sub display {
	print "PrintSupport: Call display()\n";
}

1;