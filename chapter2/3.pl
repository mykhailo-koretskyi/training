#!/usr/bin/perl -w

print "Enter a text: ";
$text = <STDIN>;
chomp $text;

print "$text\n";
print "\\l: \l$text\n";
print "\\L: \L$text\n";
print "\\u: \u$text\n";
print "\\U: \U$text\n";
print "\\Q: \Q$text\E\n";