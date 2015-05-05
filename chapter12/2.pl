use Carp;
use CGI;
use sigtrap;

for $key (sort keys %INC) {
	print "$key: $INC{$key}\n";
}