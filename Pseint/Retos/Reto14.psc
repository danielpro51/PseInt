Algoritmo Reto14
	Escribir "Dime un n�mero de inicio"
	Leer NInicio
	Suma <- 0
	Lim <- 0
	ll <- NInicio
	Mientras Lim < ll Hacer
		Si NInicio % 2 = 0 Entonces
			Suma <- Suma + NInicio
			Lim <- Lim + 1
		FinSi
		NInicio <- NInicio + 1
	Fin Mientras
	Escribir Suma
FinAlgoritmo
