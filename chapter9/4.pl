=begin

Create a program that asks the user four questions, then saves the replies in a file.
The questions are:
(a) Name of the file
(b) First name
(c) Last name
(d) e-mail address
If you know HTML, you may wish to create it in that format.
Optional extension:
An email address can often be constructed using the first and last names, followed by
@domain, for example: Fred.Bloggs@qa.com. Enhance your code to prompt for the
domain instead, and construct the email address based on this assumption.

=cut

use strict;
use warnings;

print "Enter de name of the file:";
my $file = <STDIN>;
chomp $file;
print "Enter your first name:";
my $first = <STDIN>;
chomp $first;
print "Enter your last name:";
my $last = <STDIN>;
chomp $last;
print "Enter your email domain:";
my $domain = <STDIN>;
chomp $domain;

open (FILE, ">", $file);

print FILE <<ENDFILE;
Fist name: $first\n
Last name: $last\n
E-mail: $first.$last\@$domain\n
ENDFILE

close FILE;