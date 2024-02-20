Algoritmo Reto15
	Escribir "Dime una secuencia de números hasta -1"
	Leer num
	suma<-0
	contador<- 0
	Mientras num <> -1 Hacer
		sum <- sum + num
		contador <- contador + 1
		Leer num
	Fin Mientras
	X <- (sum) / (contador - 1)
	Escribir "La media es ", X
FinAlgoritmo
