print "Please enter a text: ";
$text = <STDIN>;
chomp $text;

print "Please enter a number: ";
$num = <STDIN>;
chomp $num;

print "The text [$text] multiplied [$num] times is: " , $text x $num, "\n";