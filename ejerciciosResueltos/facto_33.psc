Funcion factorial(n)
	c <- 1
	// Un factorial es 1 x 2 x 3 x 4
	// c = 1 * 1 = 1
	// c = 1 * 2 = 2
	// c = 2 * 3 = 6
	// ¿Por qué no c = i * (i - 1) * (i - 2)?
	// Porque no se estaría aplicando correctamente la fórmula
	// Factorial es acumulativa: n = n x (n - 1) x (n - 2) x ... x 1
	// Todo debe seguir en línea y no en partes. Es por eso que i * (i - 1) * (i - 2)
	// Aunque sí de el resultado, hace cálculos innecesarios y no es acumulativa
	Para i <- 1 Hasta n Hacer
		c <- c * i
	FinPara
	Escribir "El resultado del factorial de ",n," es: ",c
FinFuncion
Algoritmo facto_33
	Definir n Como Entero
	Escribir "|--------------------||--------------------|"
	Escribir "Dime un número a factoriar: " Sin Saltar
	Leer n
	Limpiar Pantalla
	Escribir "|--------------------||--------------------|"
	factorial(n)
	Escribir "|--------------------||--------------------|"
FinAlgoritmo
