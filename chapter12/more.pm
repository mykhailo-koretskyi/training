package more;

my $g_OldHandle;

BEGIN
{
	open (MORE, "|more") or die "No more: $!\n";
	$g_OldHandle = select MORE
}
END
{
	select $g_OldHandle;
	close (MORE);
}

1;