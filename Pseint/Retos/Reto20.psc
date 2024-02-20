Algoritmo Reto20
	N <- 4
	Simb <- "*"
	C <- N
	K <- N - 1
	Para i<-N Hasta 1 Con Paso -1 Hacer
		Para j<-K Hasta 0 Con Paso -1 Hacer
			Escribir Sin Saltar " "
		FinPara
		K <- K + 1
		Para j<-1 Hasta i Con Paso 1 Hacer
			Escribir Sin Saltar Simb
		FinPara
		Escribir " "
	Fin Para
FinAlgoritmo
