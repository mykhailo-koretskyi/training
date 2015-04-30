$text = 'Did you feed the dog today?';
$replace = 'feed';

$offset = index ($text, $replace);
$len = length $replace;

$action = substr($text, $offset, $len);
print "At $offset,$len: [$action]\n";

$copy = $text;
$replace = 'dog';
$offset = index ($copy, $replace);
$len = length $replace;
substr ($copy, $offset, $len) = 'cat';
print "New string: [$copy]\n";

$copy = $text;
substr($copy, $offset, $len) = 'Labrador';
print "New string: [$copy]\n";