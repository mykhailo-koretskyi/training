#!/usr/bin/perl -w
use strict;
use warnings;
use CGI;
use CGI::Carp qw(fatalsToBrowser);
use HTML;
use Topicos;

my $q = new CGI;
my $base = new Base;

if ($q->param('class') eq 't') {
	my $user_id = $q->param('user_id');
	my $id = $q->param('id');
	$base->do("DELETE FROM topicos WHERE id = '$id'");
	$base->disconnect;
	print $q->redirect("main.pl?user_id=$user_id");
} 

if ($q->param('class') eq 'm') {
	my $user_id = $q->param('user_id');
	my $id = $q->param('id');
	my $topic = $q->param('topic');
	$base->do("DELETE FROM mensajes WHERE id = '$id'");
	$base->disconnect;
	print $q->redirect("comment.pl?user_id=$user_id&id=$topic");
}