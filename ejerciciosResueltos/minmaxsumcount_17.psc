Algoritmo minmaxsumcont_17
	Definir min, max, sum, cont, nUsuario Como Entero
	Escribir "Dime una serie de números. Terminar con 0"
	Leer nUsuario
	max <- nUsuario
	min <- nUsuario
	// Se pone el número inicial como el máximo y mínimo
	// En caso del mínimo, se pone la variable del usuario para que ese valor sea utilizado de referencia
	// Si fuera 0 sería "un número menor a cero" y sólo serían negativos, por tanto
	Mientras nUsuario <> 0 Hacer
		sum <- sum + nUsuario
		Si nUsuario > max Entonces
			max = nUsuario
		SiNo
			Si nUsuario < min Entonces
				min = nUsuario
			FinSi
		FinSi
		Leer nUsuario
		cont <- cont + 1
	FinMientras
	Escribir "La suma es ", sum
	Escribir "La cantidad total es ", cont
	Escribir "El número máximo es ", max
	Escribir "El número mínimo es ", min
FinAlgoritmo
