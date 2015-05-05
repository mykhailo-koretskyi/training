=begin
Write a Perl program that reads a string $text (see above), then print it using each
of the interpolations, \l \L \u \U \Q (see Page 9 of this chapter). For example,
using \U means: print "\U$text\n";.
Try this with various input values:
(a) A number, e.g. 123
(b) A name, e.g. John
(c) A sentence, e.g. How are you today?
(d) Non-alphanumeric character sequences, e.g. * & % $ \
=cut

print "Enter a text: ";
$text = <STDIN>;
chomp $text;

print "$text\n";
print "\\l: \l$text\n";
print "\\L: \L$text\n";
print "\\u: \u$text\n";
print "\\U: \U$text\n";
print "\\Q: \Q$text\E\n";
