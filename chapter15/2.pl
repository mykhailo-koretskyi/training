=begin

Given the following subroutine and program code, predict the output. Now run the
program (Ch16Ex3.pl) and check your answer.
sub new_scalar_ref
{
my $a = 1;
return \$a;
}
$one = new_scalar_ref();
$two = new_scalar_ref();
$three = $one;
$four = $two;
$five = $$one;
$six = $$two;
$$one++;
$$one++;
$$two++;
$$three++;
$$four++;
$five++;
$six++;
print "$$one; $$two; $$three; $$four; $five; $six\n";

=cut

sub new_scalar_ref
{
my $a = 1;
return \$a;
}
$one = new_scalar_ref();
$two = new_scalar_ref();
$three = $one;
$four = $two;
$five = $$one;
$six = $$two;
$$one++;
$$one++;
$$two++;
$$three++;
$$four++;
$five++;
$six++;
print "$$one; $$two; $$three; $$four; $five; $six\n";