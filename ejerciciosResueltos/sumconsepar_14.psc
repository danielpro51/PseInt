Algoritmo sumconsepar_14
	Definir suma, n, nn,limite Como Entero
	Escribir "Dime un número inicial"
	Leer n
	nn <- n // Final
	limite <- 0
	Mientras limite < nn Hacer
		Si n % 2 = 0 Entonces
			suma <- suma + n // Se suma n porque se empieza desde el número inicial
			limite <- limite + 1 
			Escribir n,", " Sin Saltar
		FinSi
		n <- n + 1 // Se suma +1 para avanzar
	FinMientras
	Escribir "La suma de los pares consecutivos de ", n," es ", suma
FinAlgoritmo
