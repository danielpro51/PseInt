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
FinFuncion
Algoritmo arrayMulDim_27
	Definir filas, columnas Como Entero
	Escribir "|--------------------||--------------------|"
	Escribir "Dime cu�ntas filas son " Sin Saltar
	Leer filas
	Escribir "Dime cu�ntas columnas son " Sin Saltar
	Leer columnas
	Escribir "|--------------------||--------------------|"
	Limpiar Pantalla
	Escribir "|--------------------||--------------------|"
	Escribir "El array ","(",filas,",",columnas,") con valores entre 1-9 qued� as�:"
	Escribir "|--------------------||--------------------|"
	RellenarVector(filas,columnas)
	Escribir "|--------------------||--------------------|"
	
FinAlgoritmo
