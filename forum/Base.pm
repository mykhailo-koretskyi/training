#!/usr/bin/perl -w
package Base;

use strict;
use DBI;

sub new {
	my $driver = "mysql";
    my $database= "forum";
    my $dsn = "DBI:$driver:database=$database";
    my $userid = "root";
    my $password = "mariano";

    my $dbh = DBI ->connect($dsn, $userid, $password);
    return $dbh;
}

1;

