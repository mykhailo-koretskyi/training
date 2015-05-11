#!/usr/bin/perl -w
package Mensajes;
use CGI;
use Base;

sub new {
    return bless{};
}

sub get_all {

}

sub nuevo {
    my $base = new Base;
    my ($class, $id_topico, $id_user, $mensaje) = @_;
    $base->do("INSERT INTO mensajes (id, id_topico, id_user, mensaje, activo) VALUES(null, '$id_topico', '$id_user', '$mensaje', '1')");
    $base->disconnect();
}

1;
