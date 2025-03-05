Algoritmo cc_13
	Definir sum, nn Como Entero
	sum = 0
	Escribir "|--------------------||--------------------|"
	Escribir "Dime el límite a contar: " Sin Saltar
	Leer nn
	Escribir "|--------------------||--------------------|"
	Para num <- 1 Hasta nn Hacer
		sum <- sum + num // Si fuera sum <- num sólo habría reemplazos de valor, sin efecto
		// Pero sum <- sum + num actualiza el valor de la sum al sumarle num
		// Es decir:
		// sum = 0
		// sum = 0 + 1
		// sum = 1 + 2
		// sum = 3 + ...
	FinPara
	Escribir "El resultado de la suma desde 1 hasta ", nn," es ", sum
FinAlgoritmo
