Algoritmo ordenamientoBurbuja_24
	// O BubbleSort
	Definir n1 Como Entero
	Definir seRepite Como Logico
	Dimensionar lista[5]
	Escribir "|--------------------||--------------------|"
	Escribir "Dame 5 valores n�meros no ordenados a ordenar"
	// Leer datos y almacenarlos en el vector
	Para h <- 1 Hasta 5 Hacer
		Leer n1
		lista[h] <- n1
	FinPara
	Limpiar Pantalla
	// El primer ciclo controla las iteraciones, es decir, hace que el ciclo se repita para cada elemento del vector
	Para i <- 1 Hasta 4 Hacer
		// El segundo ciclo controla la comparaci�n
		Para j <- 1 Hasta 4 Hacer
			// Si la posici�n adyacente es menor que la posici�n actual entonces
			// Se intercambian valores, con un auxiliar en medios para no perder el valor
			// Ese ">" determina si la tabla queda organizada de menor a mayor o viceversa
			Si lista[j] > lista[j+1] Entonces
				c <- lista[j] // Valor auxiliar que guarda lista[j]
				lista[j] = lista[j+1]
				lista[j + 1] = c
			FinSi
		FinPara
	FinPara
	// Resultado
	Escribir "|--------------------||--------------------|"
	Escribir "El orden qued� as�: " Sin Saltar
	Para i <- 1 Hasta 5 Hacer
		Escribir lista[i], " " Sin Saltar
	FinPara
	Escribir ""
	Escribir "|--------------------||--------------------|"
FinAlgoritmo
