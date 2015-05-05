=begin
The command line arguments for a script are available within the program from a predefined
system variable @ARGV.
Write a program, echo.pl, that prints all its command line arguments to the screen.
Call the program with a shell wildcard (glob construct), for example:
On UNIX:
echo.pl /etc/*
On Microsoft Windows NT/2000:
perl –w echo.pl c:\winnt\*
On Microsoft Windows 95/98/Me/XP:
perl –w echo.pl c:\windows\*
What happens? Which program is responsible for the handling of wildcards?
=cut

use strict;
use warnings;

print "@ARGV";
