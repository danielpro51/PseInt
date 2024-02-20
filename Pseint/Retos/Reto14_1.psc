Algoritmo Reto14_1
	Escribir "Dime un número de inicio y final"
	Leer NInicio
	Leer NFinal
	Suma <- 0
	Para n <-NInicio Hasta (NFinal) Con Paso 1 Hacer
		Escribir n
		Si n % 2 = 0 Entonces
			Suma <- Suma + n
		FinSi
	Fin Para
	Escribir Suma
FinAlgoritmo
