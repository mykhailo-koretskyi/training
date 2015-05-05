=begin

Alter the Report class and introduce the extra method title page(). Then create a
FaxedReport class that inherits first from Fax, then from Report.
Show from which class FaxedReport inherits setup(), display(), layout() and title
page().

=cut

use strict;
use warnings;
use FaxedReport;

my $faxed = new FaxedReport;

$faxed->setup();
$faxed->display();
$faxed->layout();
$faxed->title_page();
