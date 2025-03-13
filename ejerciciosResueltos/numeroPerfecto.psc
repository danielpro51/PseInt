Algoritmo numeroPerfecto
	Definir n, i Como Entero
	Leer n
	i <- 0
	pP <- 0
	Repetir
		i <- i + 1
		Si 2^(i-1)*((2^i)-1) == n Entonces
			pP <- 1
		FinSi
		Si i > 51 Entonces
			pP <- -1
		FinSi
	Hasta Que pP == 1 o pP == -1
	Si pP == 1 Entonces
		Escribir "Es un número perfecto. Su primo es ",i
	SiNo
		Escribir "No es un número perfecto."
	FinSi
FinAlgoritmo
