=begin

Recall Chapter 9 Input and Output, Exercise 3, in which we printed certain lines from
a file. Take your solution for this exercise (or use the supplied solution) and modify it
so that the functionality is supplied by a subroutine called file_details.
The subroutine is to take as its arguments a filename, followed by a list of line
numbers.
When called in array context, it is to return a list of the required lines. If a line number
is invalid, its entry in the list should be undef.
When called in scalar context, it is to return the total number of lines in the file.

=cut



=begin
sub file_details {
	
	my $file = shift;

	open (FILE, $file);
	my @lines = <FILE>;
	close FILE;

	if (wantarray) {
		my @lines_req;
		for my $lineno (@_) {
			if ($lineno < 1 || $lineno > @lines) {
				push @req_lines, undef;
			} else {
				push @req_lines, $lines[$lineno-1];
			}
		}
		return @lines_req;
	} else {
		return scalar(@lines);
	}
}

die "Usage: $0 filename line-number\n" if @ARGV < 2;

$res1 = file_details(@ARGV);
print "Lines: $res1\n";

@res2 = file_details(@ARGV);
print "Res: @res2\n";

=cut

use strict;
use warnings;

sub file_details {
	my @req_lines;
	my $file = shift;

	open (FILE, $file) || die "Unable to open $file: $!";
	my @lines = <FILE>;
	close FILE;

	if (wantarray) {
		my @req_lines;

		for my $lineno (@_) {
			if ($lineno < 1 || $lineno > @lines) {
				push @req_lines, undef;
			} else {
				push @req_lines, $lines[$lineno-1]
			}
		}
		return @req_lines
	} else {
		return scalar(@lines);
	}
}

die "Usage: $0 filename line-number\n" if @ARGV < 2;

my $lines = file_details (@ARGV);
print "Number of lines: $lines\n";

my @theline = file_details (@ARGV);
print "Required lines: @theline\n";