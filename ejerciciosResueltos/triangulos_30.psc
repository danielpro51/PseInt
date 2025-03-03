Funcion TrianguloInvertido(numero)
	Definir altura, aux, cc Como Entero
	Leer altura
	aux = 0
	cc = 0
	// Forma 1
	Repetir
		Si aux < altura Entonces
			Escribir "*" Sin Saltar
			aux <- aux + 1
		FinSi
		Si aux = altura Entonces
			cc <- cc + 1
			aux <- cc
			Escribir ""
		FinSi
	Hasta Que cc = altura
FinFuncion
Funcion TrianguloNormal(numero)
	Definir altura, aux, cc Como Entero
	Leer altura
	// Forma 1
	linea = ""
	Para i <- 1 Hasta altura Hacer
		linea = Concatenar("*", linea)
		Escribir linea
	FinPara
	// Forma 2
	
	//aux <- altura
	//Para i <- 1 Hasta altura Hacer
	//	Para k <- aux Hasta altura Hacer
	//		Escribir "*" Sin Saltar
	//	FinPara
	//	aux <- aux - 1
	//	Escribir ""
	//FinPara
FinFuncion
Funcion TriangulodeLado(numero)
	altura = 5
	aux = altura
	espacios = 0
	// Forma 2
	Para i <- 1 Hasta altura Hacer
		Para j <- 0 Hasta espacios Hacer
			Escribir " " Sin Saltar
		FinPara
		Para k <- 1 Hasta aux Hacer
			Escribir "*" Sin Saltar
		FinPara
		aux <- aux - 1
		espacios <- espacios + 1
		Escribir ""
	FinPara
FinFuncion
Algoritmo triangulos_30
	TrianguloInvertido(1)
	//TrianguloNormal(1)
	//TriangulodeLado(1)
FinAlgoritmo
