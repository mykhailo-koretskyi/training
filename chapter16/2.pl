=begin

Create the classes Fax and Report that each derive from PrintSupport.
These classes have their own setup() and display() methods, but inherit the layout()
method from PrintSupport.
Create Fax and Report objects, and call each method.

=cut
use strict;
use warnings;
use Fax;
use Report;


my $fax = new Fax;
my $report = new Report;

print $fax->setup();
print $fax->display();
print $fax->layout();
print $report->setup();
print $report->display();
print $report->layout();