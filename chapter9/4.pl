print "Enter de name of the file:";
$file = <STDIN>;
chomp $file;
print "Enter your first name:";
$first = <STDIN>;
chomp $first;
print "Enter your last name:";
$last = <STDIN>;
chomp $last;
print "Enter your email domain:";
$domain = <STDIN>;
chomp $domain;

open (FILE, ">", $file);

print FILE <<ENDFILE;
Fist name: $first\n
Last name: $last\n
E-mail: $first.$last\@$domain\n
ENDFILE

close FILE;