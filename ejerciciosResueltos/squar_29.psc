Algoritmo squar_29
	Definir cantidad Como Entero
	Escribir "|--------------------||--------------------|"
	Escribir "Dime la altura del cuadrado: " Sin Saltar
	Leer cantidad
	Escribir "|--------------------||--------------------|"
	// Parte de superior
	
	Para i <- 1 Hasta cantidad Hacer
		Escribir "*" Sin Saltar
	FinPara
	Escribir ""
	// Tronco
	Para i <- 1 Hasta REDON(cantidad/2) Hacer
		Escribir "*" Sin Saltar
		// -2 por el espaciado extra que queda
		Para j <- 1 Hasta cantidad-2 Hacer
			Escribir " " Sin Saltar
		FinPara
		Escribir "*"
	FinPara
	// Parte de inferior
	
	Para i <- 1 Hasta cantidad Hacer
		Escribir "*" Sin Saltar
	FinPara
	Escribir ""
	Escribir "|--------------------||--------------------|"
FinAlgoritmo
