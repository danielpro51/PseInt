Funcion Fibonacci(n)
	a <- 1
	b <- 1
	c <- 0
	Si n = 0 Entonces
		Escribir 0
	SiNo
		// Este es para el resultado en s�; n=3, b = 2
		// 0, 1, 1 = 2
		Para i <- 3 Hasta n Hacer
			c <- a + b
			a <- b
			b <- c
		FinPara
	FinSi
	Escribir b
FinFuncion
Funcion cb (n) // La secuencia de Fibonacci es iterativa, es decir, la suma depende de los dos n�meros anteriores, lo que la hace acumulativa
	a = 1
	b = 0
	// 1 + 0 = 1 = z
	
	// a = b = 0
	// b = z = 1
	
	// 0 + 1 = 1 = z
	
	// a = b = 1
	// b = z = 1
	
	// 1 + 1 = 2 = z
	
	// �Por qu� no (i - 1) + (i - 2), como dice su f�rmula general?
	// Por lo dicho anteriormente, la secuencia es acumulativa; y esa f�rmula no es acumulativa
	// Adem�s de NO mostrar la secuencia, SINO el resultado en s�; sumado a ello, a pesar de mostar el resultado
	// NO lo hace de la manera secuencial
	Escribir "La secuencia de Fibonacci desde 1 hasta ",n," es "
	Para i <- 1 Hasta n Hacer
		z = a + b
		a = b
		b = z
		Escribir z," " Sin Saltar
	FinPara
	Escribir ""
FinFuncion
Algoritmo fibo_32
	Definir n Como Entero
	Escribir "|--------------------||--------------------|"
	Escribir "Dime el n�mero m�ximo donde la secuencia Fibonacci debe llegar"
	Leer n
	Limpiar Pantalla
	Escribir "|--------------------||--------------------|"

	cb(n)
	Escribir "|--------------------||--------------------|"
FinAlgoritmo
// �Qu� es una estructura iterativa?
// Un c�digo tiene estructura iterativa cuando ejecuta la misma acci�n varias veces
// Ya sea con un bucle o porque depende de una condici�n que lo hace repetirse