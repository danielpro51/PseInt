Algoritmo Reto17
	Escribir "Di una lista de n�meros hasta 0"
	Leer num
	Max <- num
	Min <- num
	Suma <- 0
	Contador <- 0
	Mientras num <> 0 Hacer
		Si num > max Entonces
			max <- num
		FinSi
		Si num < Min Entonces
			min <- num
		FinSi
		Suma <- Suma + num
		Contador <- Contador + 1
		Leer num
	Fin Mientras
	Media <- Suma / (Contador)
	Escribir "N�mero mayor ",Max," menor ",Min, " media ", Media
FinAlgoritmo
