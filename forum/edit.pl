#!/usr/bin/perl -w
use strict;
use warnings;
use CGI;
use CGI::Carp qw(fatalsToBrowser);
use HTML;
use Topicos;

my $q = new CGI;
my $base = new Base;
my $html = new HTML;

if ($q->param('editar') == 1) {
	my $user_id = $q->param('user_id');
	my $id = $q->param('id');
	my $class = $q->param('class');
	if ($class eq 't') {
		my $top = $q->param('topico');
		$base->do("UPDATE topicos SET topico_name = '$top' WHERE id = '$id'");
		$base->disconnect();
		print $q->redirect("main.pl?user_id=$user_id");
	}
	if ($class eq 'm') {
		my $texto = $q->param('texto');
		my $topic_id = $q->param('topic');
		$base->do("UPDATE mensajes SET mensaje = '$texto' WHERE id = '$id'");
		$base->disconnect();
		print $q->redirect("comment.pl?user_id=$user_id&id=$topic_id");
	}
}


$html->headers($q);
$html->out_top($q, "Edit");

if ($q->param('class') eq 't') {
	my $user_id = $q->param('user_id');
	my $id = $q->param('id');
	my $class = $q->param('class');
	print $q->start_form(
		-name => 'main',
		-method => 'POST',
		-action => 'edit.pl');
	print $q->textfield(-name => 'topico'), $q->submit(-value => 'Submit');
	print $q->hidden(-name => 'id', -value => $id);
	print $q->hidden(-name => 'editar', -value => '1');
	print $q->hidden(-name => 'user_id', -value => $user_id);
	print $q->hidden(-name => 'class', -value => $class);
	print $q->end_form;
	
} 

if ($q->param('class') eq 'm') {
	my $user_id = $q->param('user_id');
	my $id = $q->param('id');
	my $class = $q->param('class');
	my $topic = $q->param('topic');
	print $q->start_form(
		-name => 'main',
		-method => 'POST',
		-action => 'edit.pl');
	print $q->textarea(-name => 'texto'), $q->submit(-value => 'Submit');
	print $q->hidden(-name => 'id', -value => $id);
	print $q->hidden(-name => 'editar', -value => '1');
	print $q->hidden(-name => 'user_id', -value => $user_id);
	print $q->hidden(-name => 'topic', -value => $topic);
	print $q->hidden(-name => 'class', -value => $class);
	print $q->end_form;	
}
$html->out_end($q);