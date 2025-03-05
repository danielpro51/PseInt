Funcion Fibonacci(n)
	a <- 1
	b <- 1
	c <- 0
	Si n = 0 Entonces
		Escribir 0
	SiNo
		// Este es para el resultado en sí; n=3, b = 2
		// 0, 1, 1 = 2
		Para i <- 3 Hasta n Hacer
			c <- a + b
			a <- b
			b <- c
		FinPara
	FinSi
	Escribir b
FinFuncion
Funcion cb (n) // La secuencia de Fibonacci es iterativa, es decir, la suma depende de los dos números anteriores, lo que la hace acumulativa
	a = 1
	b = 0
	// 1 + 0 = 1 = z
	
	// a = b = 0
	// b = z = 1
	
	// 0 + 1 = 1 = z
	
	// a = b = 1
	// b = z = 1
	
	// 1 + 1 = 2 = z
	
	// ¿Por qué no (i - 1) + (i - 2), como dice su fórmula general?
	// Por lo dicho anteriormente, la secuencia es acumulativa; y esa fórmula no es acumulativa
	// Además de NO mostrar la secuencia, SINO el resultado en sí; sumado a ello, a pesar de mostar el resultado
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
	Escribir "Dime el número máximo donde la secuencia Fibonacci debe llegar"
	Leer n
	Limpiar Pantalla
	Escribir "|--------------------||--------------------|"

	cb(n)
	Escribir "|--------------------||--------------------|"
FinAlgoritmo
// ¿Qué es una estructura iterativa?
// Un código tiene estructura iterativa cuando ejecuta la misma acción varias veces
// Ya sea con un bucle o porque depende de una condición que lo hace repetirse