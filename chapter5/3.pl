=begin

(a) The substr function is used to extract a sub string from the middle of a text. Use
it to extract the word 'feed' from the text 'Did you feed the dog today?'.
Of course it would be unrealistic to expect the word 'feed' and the text line to be
hard-coded, they would probably come from some outside source. Therefore do
not hard-code the length of the word or its offset, use length and index to find
them instead.
(b) You can also assign to a sub-string (i.e. use the function as an lvalue). Use this
feature to replace the word `dog' by `cat' in the example text.
(c) You can grow and shrink strings by assigning to the substr function. Use this
feature to replace 'dog' with 'Labrador' in the example text.

=cut

use strict;
use warnings;

my $text = 'Did you feed the dog today?';
my $replace = 'feed';

my $offset = index ($text, $replace);
my $len = length $replace;

my $action = substr($text, $offset, $len);
print "At $offset,$len: [$action]\n";

my $copy = $text;
$replace = 'dog';
$offset = index ($copy, $replace);
$len = length $replace;
substr ($copy, $offset, $len) = 'cat';
print "New string: [$copy]\n";

$copy = $text;
substr($copy, $offset, $len) = 'Labrador';
print "New string: [$copy]\n";