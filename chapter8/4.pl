=begin

Write a simple command line Perl shell. The "shell" is to output the prompt "Perl > ",
and Perl commands are read from the keyboard. Errors are displayed on the screen.
Hints:
Keep it simple!
We suggest you use an infinite loop.
Read the line from the keyboard using something like:
my $line = <STDIN>;
Use eval to execute the line.
Check the result of the eval (TMTOWTDI) and print any error messages to
the standard error output stream.
Do you need to chomp the command line before executing it?
How does the user exit the shell?
Optional extension
The Perl command to delete a file is: unlink filename. Modify your script to
prevent the user from deleting a file using this command, and output a suitable
message when an attempt is detected.
Test your code. First make a backup copy of your script! Now pretend you are a
malicious user who types:
print unlink $0
We hope you remembered to backup your script!
Note: there are other ways of deleting a file by using a shell command from Perl,
ignore these for the purposes of this exercise.

=cut

use strict;
use warnings;

while (1) {
	print "Perl > ";
	my $line = <STDIN>;

	if (index($line, 'unlink') == -1) {
		eval $line;
	} else {
		$@ = "This command is not allowed!\n";
	}
}