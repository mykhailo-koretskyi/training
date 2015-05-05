=begin

(a) Create a module called `PrintSupport' that contain dummy functions that do nothing
but print their name. These functions should be: print_HP, print_Xerox, print_Apple,
print_fax. Then create a program that uses this module and call all functions from the
main program.
(b) Now change the start of the module to read:
package PrintSupport;
use Exporter;
BEGIN
{
@ISA = qw(Exporter);
@EXPORT = qw(print_HP print_fax);
}
Now try and remove the use of :: in the main program wherever possible.
(c) Change the module to use on-demand exports (@EXPORT_OK), and change the main
program to import only the routines required.

=cut

use strict;
use warnings;
use PrintSupport 'print_HP', 'print_fax';

print_HP();
PrintSupport::print_Xerox();
PrintSupport::print_Apple();
print_fax();