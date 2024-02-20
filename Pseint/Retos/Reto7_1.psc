Algoritmo Reto7_1
	Escribir "Número de niños y niñas totales"
	Leer n1
	Escribir "Número de niños"
	Leer n2
	Niñas <- n1 - n2
	PorNiños <- n2 * 100 / n1
	PorNiñas <- Niñas * 100 / n1
	Escribir "Hay ", Niñas, " niñas ", PorNiños,"% de niños y ", PorNiñas,"% de niñas ", PorNiños + PorNiñas
FinAlgoritmo
