#!/usr/bin/perl -w
package Topicos;
use CGI;
use Base;

sub new {
    return bless{};
}

sub get_all {

}

sub nuevo {
    my $base = new Base;
    my ($class, $user_id, $topico) = @_;
    my $local = localtime;
    $base->do("INSERT INTO topicos (id, user_id, topico_name, date, activo) VALUES(null, '$user_id', '$topico', '$local', '1')");
    $base->disconnect();
}

1;

