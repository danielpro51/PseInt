Funcion ImprimirVector(Veeector, filas, columnas) // Función usada en el ejercicio 27 modificada
	cc <- 0 // Para que no se pase de las columnas máximas
	Para k <- 1 Hasta columnas Hacer
		Escribir "  ",k Sin Saltar
	FinPara
	Escribir ""
	Para i <- 1 Hasta filas Hacer
		Escribir i," " Sin Saltar
		Para j <- 1 Hasta columnas + 1 Hacer
			Si cc >= columnas Entonces // Si se desborda entonces
				cc <- 0
				Escribir ""
			SiNo
				cc <- cc + 1
				Escribir Veeector[i,j] Sin Saltar
			FinSi
		FinPara
	FinPara
	Escribir ""
FinFuncion
Funcion RellenarVector(arreglo, filas, columnas, ppAUX)
	Para i <- 1 Hasta filas Hacer
		Para j <- 1 Hasta columnas Hacer
			Si arreglo[i,j] == "?" Entonces
				arreglo[i,j] = "["+arreglo[i,j]+"]"
			SiNo
				Si arreglo[i,j] == ppAUX[i,j] Entonces
					arreglo[i,j] = "["+arreglo[i,j]+"]"
				FinSi
			FinSi
		FinPara
	FinPara
FinFuncion
Algoritmo cartas_37
	Definir filas, columnas, pares, contador, ccc Como Entero
	Definir Coor1X, Coor2X, Coor1Y, Coor2Y Como Entero
	Definir words Como Caracter
	Definir tableroLleno Como Logico
	Escribir "|--------------------||--------------------||--------------------|"
	Escribir " Dime las filas que quieres que tenga el juego: " Sin Saltar
	Leer filas
	Escribir "|--------------------||--------------------||--------------------|"
	Escribir " Dime las columnas que quieres que tenga el juego: " Sin Saltar
	Leer columnas
	Escribir "|--------------------||--------------------||--------------------|"
	//filas = 4
	//columnas = 4
	tableroLleno = FALSO
	Dimension pp[filas, columnas]
	Dimension ppAUX[filas, columnas]
	Para i <- 1 Hasta filas Hacer
		Para j <- 1 Hasta columnas Hacer
			pp[i,j] = "?"
		FinPara
	FinPara
	RellenarVector(pp,filas,columnas, ppAUX)
	ImprimirVector(pp,filas,columnas)
	// Asignación de valores aleatorios
	words = "abcdefghijklmnopqrstuvwxz"
	pares <- Redon((filas*columnas)/2)
	Si pares % 2 == 0 Entonces
		pares <- pares
	SiNo
		pares <- pares + 1
	FinSi
	lista = ""
	contador <- 1
	Para i <- 1 Hasta pares Hacer
		lista = lista + Subcadena(words, i, i) + Subcadena(words, i, i)  // Se duplica cada letra
	FinPara
	
	Para i <- Longitud(lista) Hasta 2 Con Paso -1 Hacer
		j <- Aleatorio(1, i)
		// Intercambiar lista[i] con lista[j]
		aux <- Subcadena(lista, i, i)
		lista = Subcadena(lista, 1, i-1) + Subcadena(lista, j, j) + Subcadena(lista, i+1, Longitud(lista))
		lista = Subcadena(lista, 1, j-1) + aux + Subcadena(lista, j+1, Longitud(lista))
	FinPara
	
	Para i <- 1 Hasta filas Hacer
		Para j <- 1 Hasta columnas Hacer
			cc <- cc + 1
			ppAUX[i,j] = Subcadena(lista,contador,contador)
			contador <- contador + 1
		FinPara
	FinPara
	ccc <- 0
	Mientras tableroLleno == FALSO Hacer
		// Verificar si están dentro del rango
		// Carta 1
		Repetir
			Escribir "Dime la fila de la carta 1: " Sin Saltar
			Leer Coor1X
		Hasta Que Coor1X <= filas
		Repetir
			Escribir "Dime la columna de la carta 1: " Sin Saltar
			Leer Coor1Y
		Hasta Que Coor1Y <= columnas
		// Carta 2
		Repetir
			Escribir "Dime la fila de la carta 2: " Sin Saltar
			Leer Coor2X
		Hasta Que Coor2X <= filas
		Repetir
			Escribir "Dime la columna de la carta 2: " Sin Saltar
			Leer Coor2Y
		Hasta Que Coor2Y <= columnas
		Escribir pp[Coor1X,Coor1Y] + pp[Coor2X,Coor2Y],"..."
		Escribir ppAUX[Coor1X,Coor1Y] + ppAUX[Coor2X,Coor2Y],"..w"
		// Verificar si la casilla YA FUE ACERTADA y no hacer validación
		// Si las coordenadas son iguales pero si NO decide insertar las mismas. (x1,y1) == (x1,y1) NO
		Si (ppAUX[Coor1X,Coor1Y] == ppAUX[Coor2X,Coor2Y]) y (Coor1X <> Coor2X o Coor1Y <> Coor2Y) y (pp[Coor1X,Coor1Y] == "[?]" y pp[Coor2X,Coor2Y] == "[?]") Entonces
			pp[Coor1X,Coor1Y] = ppAUX[Coor1X,Coor1Y]
			pp[Coor2X, Coor2Y] = ppAUX[Coor2X, Coor2Y]
			RellenarVector(pp,filas,columnas, ppAUX)
			ImprimirVector(pp,filas,columnas)
		SiNo
			RellenarVector(pp,filas,columnas, ppAUX)
			ImprimirVector(pp,filas,columnas)
			Si (Coor1X == Coor2X y Coor1Y == Coor2Y) Entonces
				Limpiar Pantalla
				Escribir "|--------------------||--------------------|"
				Escribir "         ¿Tratando de hacer trampa?"
				Escribir "|--------------------||--------------------|"
				Esperar 2 Segundos
				Limpiar Pantalla
				RellenarVector(pp,filas,columnas, ppAUX)
				ImprimirVector(pp,filas,columnas)
			SiNo
				Si (pp[Coor1X,Coor1Y] == "[?]" y pp[Coor2X,Coor2Y] == "["+ppAUX[Coor2X, Coor2Y]+"]") o (pp[Coor2X,Coor2Y] == "[?]" y pp[Coor1X,Coor1Y] == "["+ppAUX[Coor1X, Coor1Y]+"]") Entonces
					Limpiar Pantalla
					Escribir "|--------------------||--------------------|"
					Escribir "         ¿Tratando de hacer trampa?"
					Escribir "|--------------------||--------------------|"
					Esperar 2 Segundos
					Limpiar Pantalla
					RellenarVector(pp,filas,columnas, ppAUX)
					ImprimirVector(pp,filas,columnas)
				SiNo
					Limpiar Pantalla
					Escribir "|--------------------||--------------------|"
					Escribir "                  ¡No eran!"
					Escribir "|--------------------||--------------------|"
					Esperar 2 Segundos
					Limpiar Pantalla
					// Como falló, mostrarle qué contenían las cartas
					Escribir "|--------------------||--------------------|"
					Escribir "     Información de las cartas reveladas"
					Escribir "|--------------------||--------------------|"
					pp[Coor1X,Coor1Y] = ppAUX[Coor1X,Coor1Y]
					pp[Coor2X, Coor2Y] = ppAUX[Coor2X, Coor2Y]
					RellenarVector(pp,filas,columnas, ppAUX)
					ImprimirVector(pp,filas,columnas)
					Esperar 2 Segundos
					Limpiar Pantalla
					pp[Coor1X,Coor1Y] = "?"
					pp[Coor2X, Coor2Y] = "?"
					RellenarVector(pp,filas,columnas, ppAUX)
					ImprimirVector(pp,filas,columnas)
				FinSi
			FinSi
		FinSi
		// Verificar si en el tablero ya no tiene "?"
		Para i <- 1 Hasta filas Hacer
			Para j <- 1 Hasta columnas Hacer
				Si pp[i,j] == "[?]" Entonces
					tableroLleno = FALSO
				SiNo
					Si pp[i,j] == "["+ppAUX[i,j]+"]" Entonces
						ccc <- ccc + 1
					FinSi
				FinSi
			FinPara
		FinPara
		Si ccc == filas*columnas Entonces
			tableroLleno = VERDADERO
		SiNo
			ccc <- 0
		FinSi
	FinMientras
	Limpiar Pantalla
	Escribir "|--------------------||--------------------|"
	ImprimirVector(pp,filas,columnas)
	Escribir "|--------------------||--------------------|"
	Escribir "              ¡¡¡Felicidades!!!"
	Escribir "|--------------------||--------------------|"
FinAlgoritmo
