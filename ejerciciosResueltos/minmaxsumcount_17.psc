Algoritmo minmaxsumcont_17
	Definir min, max, sum, cont, nUsuario Como Entero
	Escribir "Dime una serie de n�meros. Terminar con 0"
	Leer nUsuario
	max <- nUsuario
	min <- nUsuario
	// Se pone el n�mero inicial como el m�ximo y m�nimo
	// En caso del m�nimo, se pone la variable del usuario para que ese valor sea utilizado de referencia
	// Si fuera 0 ser�a "un n�mero menor a cero" y s�lo ser�an negativos, por tanto
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
	Escribir "El n�mero m�ximo es ", max
	Escribir "El n�mero m�nimo es ", min
FinAlgoritmo
