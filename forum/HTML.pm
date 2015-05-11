#!/usr/bin/perl -w
package HTML;
use CGI;
use Data::Dumper;

#my $q = new CGI();

sub new {
	return bless{};
}

sub headers {
	my ($class, $q) = @_;
	print $q->header();
}

sub out_top {
	my ($class,$q, $titulo) = @_;
	print $q->start_html(
		-title => "$titulo",
		#-style=>{'src'=>'https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css'},
		-bgcolor => 'white'
	);
}

sub out_end {
	my ($class, $q) = @_;
	print $q->end_html;
}

1;