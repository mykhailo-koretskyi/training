=begin

Given the hash:
%oshash = ('MVS' => '5.2.1',
'Windows' => 'NT',
'OS/2' => 'Merlin',
'Linux' => '2.2',
'HP-UX' => '10',
'Solaris' => '2.5',
'Mac' => 'Copland');
Print the following:
(a) sorted keys
(b) sorted keys, with their values
(c) sorted values
(d) keys, in order of sorted values
(e) values, in order of sorted keys

=cut

use strict;
use warnings;

my %oshash = (
	'MVS' => '5.2.1',
	'Windows' => 'NT',
	'OS/2' => 'Merlin',
	'Linux' => '2.2',
	'HP-UX' => '10',
	'Solaris' => '2.5',
	'Mac' => 'Copland');

print "A\n";
foreach my $key (sort keys %oshash) {
    print $key, "\n";
}

print "\nB\n";
foreach my $key (sort keys %oshash) {
    print $key, "\t", $oshash{$key}, "\n";
}

print "\nC\n";
foreach my $hash (sort values %oshash) {
	print $hash, "\n";
}

print "\nD\n";
foreach my $val (sort {$oshash{$a} cmp $oshash{$b}} keys %oshash) {
	print $val, "\n";
}

print "\nE\n";
foreach my $val (sort keys %oshash) {
	print $oshash{$val}, "\n";
}