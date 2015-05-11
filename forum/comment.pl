#!/usr/bin/perl -w
use strict;
use warnings;
use CGI;
use CGI::Carp qw(fatalsToBrowser);
use HTML;
use Topicos;
use Mensajes;
use HTML;
use Base;

sub mostrar_mensajes;
sub nuevo_mensaje;

my $q = new CGI;
my $base = new Base;
my $html = new HTML;
my $mensajes = new Mensajes;
my $topicos = new Topicos;

my $user_id = $q->param('user_id');
my $id_topic = $q->param('id');

if ($q->param('mensaje')) {
	my $mensaje = $q->param('mensaje');
	$mensajes->nuevo($id_topic, $user_id, $mensaje);
	print $q->redirect("comment.pl?user_id=$user_id&id=$id_topic");
}

$html->headers($q);
$html->out_top($q, 'Comentarios');

mostrar_mensajes;
nuevo_mensaje;


$html->out_end($q);

exit 0;

sub mostrar_mensajes {
	my $base = new Base;
	my $sth = $base->prepare("SELECT mensajes.id, mensajes.id_topico, mensajes.id_user, users.user_name, mensajes.mensaje, mensajes.activo FROM mensajes INNER JOIN users ON mensajes.id_user = users.id");
	$sth->execute();
	while (my @row = $sth->fetchrow_array) {
		my $id = $row[0];
		my $topic_id = $row[1];
		my $id_user = $row[2];
		my $nombre = $row[3];
		my $msg = $row[4];
		my $activo = $row[5];
		if ($activo == 1) {
			if ($user_id eq $id_user) {
				print $q->div(
					$q->p("Creado por: $nombre"),
					$q->p("$msg"),
					$q->button({-onclick => "window.location.href='delete.pl?user_id=$user_id&id=$id&topic=$topic_id&class=m'", -value => "Del"}),
					$q->button({-onclick => "window.location.href='edit.pl?user_id=$user_id&id=$id&topic=$topic_id&class=m'", -value => "Edit"}),
					$q->hr()
				);
			} else {
					print $q->div(
					$q->p("Creado por: $nombre"),
					$q->p("$msg"),
					$q->hr()
				);
			}
		}
	}
	$base->disconnect();
}

sub nuevo_mensaje {
	print $q->start_form(
		-name => 'main',
		-method => 'POST',
		-action => 'comment.pl');
	print $q->textarea(-name => 'mensaje'), $q->submit(-value => 'Submit');
	print $q->hidden(-name => 'user_id', -value => $user_id);
	print $q->hidden(-name => 'id', -value => $id_topic);
	print $q->end_form;
}

=begin 



sub nuevo_topico {
	print $q->start_form(
		-name => 'main',
		-method => 'POST',
		-action => 'main.pl');
	print $q->textfield(-name => 'topico'), $q->submit(-value => 'Submit');
	print $q->hidden(-name => 'user_id', -value => $usuario_id);
	print $q->end_form;
}






sub nuevo_comment ($){
	my ($q) = @_;
	print $q->start_form(
		-name => 'main',
		-method => 'POST',
		-action => 'nuevocomment.pl');
	print $q->textarea(-name => 'mensaje'), $q->submit(-value => 'Submit');
	print $q->hidden(-name => 'user_name', -value => $username);
	print $q->hidden(-name => 'id_topic', -value => $id_topic);
	print $q->end_form;
}

=cut