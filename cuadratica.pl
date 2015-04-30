# aX2 + bX + c
sub ingrese_numeros;
sub calcular_raices;


ingrese_numeros();
if ($a == 0) {
	print "El primer numero no puede ser '0'\n";
	ingrese_numeros();
}
#print "$a X2 + $b X + $c\n";
calcular_raices();
print "Raices:\nx1 = $x1\nx2 = $x2\n";


sub calcular_raices {
	$cuadrada = ( $b * $b ) - ( 4 * $a * $c );
	if ($cuadrada < 0) {
		print "No se puede hacer la raiz de un numero negativo.\n";
		exit(0);
	}
	$x1 = (-$b + sqrt( $cuadrada ) ) / (2 * $a);
	
	$cuadrada = ( $b * $b ) - ( 4 * $a * $c );
	if ($cuadrada < 0) {
		print "No se puede hacer la raiz de un numero negativo.\n";
		exit(0);
	}
	$x2 = (-$b - sqrt( $cuadrada ) ) / (2 * $a);
}


sub ingrese_numeros {
	print "Ingrese un numero: ";
	$a = <STDIN>;
	chomp $a;
	print "Ingrese el segundo numero: ";
	$b = <STDIN>;
	chomp $b;
	print "Ingrese el tercer numero: ";
	$c = <STDIN>;
	chomp $c;
}