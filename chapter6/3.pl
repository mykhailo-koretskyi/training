$pin = '0123';
$limit = 3;
$counter = 0;

while ( $counter < $limit) {
	print "Please enter your PIN\t";
	$input = <STDIN>;
	chomp $input;
	$counter++;
	if ($input eq $pin) {
		last;
	}
}

if ( $input ne $pin) {
	print "You had $limit tries and failed!\n";
} else {
	print "Well done, you remembered it!\n";
	print "... and only after $counter attempts\n";
}
