#!/usr/bin/perl -w
use strict;
use warnings;
use CGI;
use CGI::Carp qw(fatalsToBrowser);
use Base;
use HTML;

sub verificar_user;
sub form_login;

my $base = new Base();
my $q = new CGI();

my $html = new HTML();
my $error = 0;

verificar_user;

$html->headers($q);
if ($error) {
	print $q->p({-style=>'Color: red;'}, "Error de password");
}
$html->out_top($q, "Login");
form_login;
$html->out_end($q);

exit 0;

sub verificar_user {
	if ($q->param()) {
		my $username = $q->param('user_name');
		my $userpass = $q->param('user_pass');
		my $sth = $base->prepare("SELECT * FROM users WHERE user_name = '$username'");
		$sth->execute();
		my ($id, $user_name, $nombre, $pass) = $sth->fetchrow_array();
		$base->disconnect();
		if ($username ne '' && $userpass eq $pass) {
			print $q->redirect("main.pl?user_id=$id");
		} else {
			$error = 1;
		}
	}
}

sub form_login {
	print $q->div({-class => 'container col-lg-offset-4 col-lg-3'});
	print $q->start_form({-name => 'login', -method => 'POST'});
	print $q->label({-class => '', -for => 'user_name'}, 'UserName');
	print $q->textfield({-class => '', -name => 'user_name', -id => 'user_name', -placeholder => 'UserName'});
	print $q->label({-class => '', -for => 'user_pass'}, 'Password');
	print $q->password_field({-class => '', -name => 'user_pass', -id => 'user_pass', -placeholder => 'Password'});
	print $q->submit({-class => '', -value => 'Login'});
}