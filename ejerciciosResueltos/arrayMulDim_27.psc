Funcion RellenarVector(filas, columnas)
	Dimension Vector[filas, columnas] // El Vector se define
	// Inicializar Vector
	Para i <- 1 Hasta filas Hacer
		Para j <- 1 Hasta columnas Hacer
			Vector[i,j] = ALEATORIO(1,9) // Establece la aleatoriedad
		FinPara
	FinPara
	ImprimirVector(Vector, filas, columnas)
FinFuncion
Funcion ImprimirVector(Veeector, filas, columnas)
	cc <- 0 // Para que no se pase de las columnas m�ximas
	Para i <- 1 Hasta filas Hacer
		Para j <- 1 Hasta columnas + 1 Hacer
			Si cc >= columnas Entonces // Si se desborda entonces
				cc <- 0
				Escribir ""
			SiNo
				cc <- cc + 1
				Escribir Veeector[i,j]," " Sin Saltar
				//Escribir "|",j,"| ",Veeector[i,j]," " Sin Saltar
			FinSi
		FinPara
	FinPara
	Escribir ""
FinFuncion
Algoritmo arrayMulDim_27
	Definir filas, columnas Como Entero
	
	Escribir "Dime cu�ntas filas son"
	Leer filas
	Escribir "Dime cu�ntas columnas son"
	Leer columnas
	RellenarVector(filas,columnas)
	
FinAlgoritmo
