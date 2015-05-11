#!/usr/bin/perl -w
use strict;
use warnings;
use CGI;
use CGI::Carp qw(fatalsToBrowser);
use HTML;
use Topicos;

sub mostrar_topicos;
sub nuevo_topico;

my $html = new HTML();
my $q = new CGI();
my $topicos = new Topicos();
my $base = new Base();

my $usuario_id = $q->param('user_id');


if($q->param('topico')) {
	$topicos->nuevo($usuario_id, $q->param('topico'));
	print $q->redirect("main.pl?user_id=$usuario_id");
}




$html->headers($q);

mostrar_topicos;
nuevo_topico;

$html->out_top($q, 'Main');
$html->out_end($q);



exit 0;

sub mostrar_topicos {
	my $base = new Base;
    my $sth = $base->prepare("SELECT topicos.id, topicos.user_id, users.user_name, topicos.topico_name, topicos.date, topicos.activo FROM topicos INNER JOIN users ON topicos.user_id = users.id");
    $sth->execute();
    while (my @row = $sth->fetchrow_array) {
		my $id = $row[0];
		my $user_id = $row[1];
		my $user_nombre = $row[2];
		my $topico = $row[3];
		my $fecha = $row[4];
		my $activo = $row[5];
		if ($activo == 1) {
			if ($user_id eq $usuario_id) {
				print $q->div(
					$q->p("Creado por: $user_nombre, el $fecha"),
					$q->a({-href => "comment.pl?user_id=$usuario_id&id=$id"}, $topico),
					$q->button({-onclick => "window.location.href='delete.pl?user_id=$usuario_id&id=$id&class=t'", -value => 'Del'}),
					$q->button({-onclick => "window.location.href='edit.pl?user_id=$usuario_id&id=$id&class=t'", -value => 'Edit'}),
					$q->hr()
				);
			} else {
				print $q->div(
					$q->p("Creado por $user_nombre, el $fecha"),
					$q->a({-href => "comment.pl?user_id=$usuario_id&id=$id"}, $topico),
					$q->hr()
				);
			}
		}
	}
	$base->disconnect();
}


sub nuevo_topico {
	print $q->start_form(
		-name => 'main',
		-method => 'POST',
		-action => 'main.pl');
	print $q->textfield(-name => 'topico'), $q->submit(-value => 'Submit');
	print $q->hidden(-name => 'user_id', -value => $usuario_id);
	print $q->end_form;
}
