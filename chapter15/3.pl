use strict;
use warnings;

open (WORDS, "word_input.txt") || die "Error open $!";

my %words;
my $line;
while ($line = <WORDS>) {
	chomp $line;
	my @texto = split / /, $line;
	for (@texto) {
		if (!defined $words{$_}) {
			$words{$_} = [$_, 1, [$line]];
		} else {
			my $ref = $words{$_};
			$ref->[1] +=1;
			push @{$ref->[2]}, $line;
		}
	}
}

close WORDS;

for (values %words) {
	print "$$_[0]: $$_[1]\n";
	for (@{$_->[2]}) {
		print "$_\n";
	}
}