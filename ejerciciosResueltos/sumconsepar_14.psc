Algoritmo sumconsepar_14
	Definir suma, n, nn,limite Como Entero
	Escribir "|--------------------||--------------------|"
	Escribir "Dime un número inicial"
	Leer n
	nn <- n // Final
	limite <- 0
	Escribir "|--------------------||--------------------|"
	Mientras limite < nn Hacer
		Si n % 2 = 0 Entonces
			suma <- suma + n // Se suma n porque se empieza desde el número inicial
			limite <- limite + 1 
			Escribir n," " Sin Saltar
		FinSi
		n <- n + 1 // Se suma +1 para avanzar
	FinMientras
	Escribir ""
	Escribir "|--------------------||--------------------|"
	Escribir "La suma de los pares consecutivos de ", nn," es ", suma
	Escribir "|--------------------||--------------------|"
FinAlgoritmo
