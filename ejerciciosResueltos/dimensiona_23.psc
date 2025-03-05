Algoritmo dimensiona_23
	Dimension lista[5]
	Escribir "|--------------------||--------------------|"
	Escribir "Una lista de 5 arrays con números al azar"
	Escribir "|--------------------||--------------------|"
	Para i <- 1 Hasta 5 Hacer
		lista[i] = Aleatorio(1,100)
	FinPara
	Para i <- 1 Hasta 5 Hacer
		Escribir i,". ",lista[i]
	FinPara
	Escribir "|--------------------||--------------------|"
FinAlgoritmo
