=begin

Create a PrintSupport class that has a constructor and the following methods, which
just print their class and method name:
· setup
· layout
· display
Create a PrintSupport object and call setup(), layout(), and display() on the object.

=cut

use strict;
use warnings;
use PrintSupport;

my $print = new PrintSupport;

$print->setup();
$print->layout();
$print->display();
