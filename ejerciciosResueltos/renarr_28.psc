Funcion ImprimirVector(Veeector, filas, columnas) // Función usada en el ejercicio 27
	cc <- 0 // Para que no se pase de las columnas máximas
	Para i <- 1 Hasta filas Hacer
		Para j <- 1 Hasta columnas + 1 Hacer
			Si cc >= columnas Entonces // Si se desborda entonces
				cc <- 0
				Escribir ""
			SiNo
				cc <- cc + 1
				Escribir Veeector[i,j]," " Sin Saltar
			FinSi
		FinPara
	FinPara
	Escribir ""
FinFuncion
Funcion RellenarVector(arreglo, filas, columnas)
	// Es 2 porque ahí tiene el contenido la tabla
	Para i <- 2 Hasta filas Hacer
		Para j <- 2 Hasta columnas Hacer
			// arreglo[1, j] = Desde la columna 1 adelante
			// arreglo[i, 1] = Desde la fila 1 adelante
			// No se usa arreglo[i-1, j] * arreglo[i, j-1] debido a cómo está hecha la tabla
			// Porque con esa fórmula, cada valor dependería directamente del otro
			// Haciendo que los valores aumenten exponencialmente
			arreglo[i,j] = arreglo[1, j] * arreglo[i, 1]
		FinPara
	FinPara
FinFuncion
Algoritmo renarr_28
	Definir filas, columnas Como Entero
	filas = 10
	columnas = 10
	Dimension arreglo[filas,columnas]
	// Inicializar vector
	Para i <- 1 Hasta filas Hacer
		Para j <- 1 Hasta columnas Hacer
			arreglo[i,j] = 0
		FinPara
	FinPara
	// Rellenar la primera fila y columna con números 0-10
	// Rellenar fila
	Para i <- 1 Hasta filas Hacer
		arreglo[1,i] = i-1
	FinPara
	
	// Rellenar columna
	Para i <- 1 Hasta filas Hacer
		arreglo[i,1] = i-1
	FinPara
	RellenarVector(arreglo, filas, columnas)
	Escribir "|--------------------||--------------------|"
	ImprimirVector(arreglo, filas, columnas)
	Escribir "|--------------------||--------------------|"
FinAlgoritmo
