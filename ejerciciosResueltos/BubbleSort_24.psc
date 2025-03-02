Algoritmo ordenamientoBurbuja_24
	// O BubbleSort
	Definir n1 Como Entero
	Definir seRepite Como Logico
	Dimensionar lista[5]
	Escribir "Dame 5 valores números no ordenado a ordenar"
	// Leer datos y almacenarlos en el vector
	Para h <- 1 Hasta 5 Hacer
		Leer n1
		lista[h] <- n1
	FinPara
	// El primer ciclo controla las iteraciones, es decir, hace que el ciclo se repita para cada elemento del vector
	Para i <- 1 Hasta 4 Hacer
		// El segundo ciclo controla la comparación
		Para j <- 1 Hasta 4 Hacer
			// Si la posición adyacente es menor que la posición actual entonces
			// Se intercambian valores, con un auxiliar en medios para no perder el valor
			Si lista[j] > lista[j+1] Entonces
				c <- lista[j] // Valor auxiliar que guarda lista[j]
				lista[j] = lista[j+1]
				lista[j + 1] = c
			FinSi
		FinPara
	FinPara
	// Resultado
	Para i <- 1 Hasta 5 Hacer
		Escribir lista[i], "-"
	FinPara
FinAlgoritmo
