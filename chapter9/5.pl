my $filename = 'count.txt';
my ($mutexname, $mutex);

require Win32::Mutex;

$mutexname = 'count_mutex';
$mutex = Win32::Mutex->new(0,$mutexname);

if (! -f $filename) {
	open (HANDLE, '>', $filename) or die "Unable to create $filename: $!";

	$mutex->wait;

	print HANDLE 1;
} else {
	open (HANDLE, "+<$filename") or die "Unable to open $filename: $!";
	$mutex->wait;

	my $value = <HANDLE>;

	die "Invalid count value <$value>" if ($value == 0);

	seek HANDLE, 0, 0 or die "Unable to rewind $filename: $!";

	print HANDLE ++$value;
}

print "Hit <RETURN> to continue";
<STDIN>;

$mutex->release;

close (HANDLE);