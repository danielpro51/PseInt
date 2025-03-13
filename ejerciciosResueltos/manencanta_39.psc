Algoritmo manencanta_39
	Definir filas, columnas, niveles Como Entero
	filas = 4
	columnas = 4
	Dimension pp[filas, columnas]
	Para i <- 1 Hasta filas Hacer
		Para j <- 1 Hasta columnas Hacer
			pp[i,j] = "[#]"
		FinPara
	FinPara
	Escribir "|--------------------||--------------------|"
	Escribir "    ¡Bienvenido a esta mansión embrujada!"
	Escribir "|--------------------||--------------------|"
	Esperar 2 Segundos
	Limpiar Pantalla
	Escribir "|--------------------||--------------------||--------------------||--------------------||--------------------|"
	Escribir " Tienes que pasar a través de las salas e ir recolectando los dulces que hay en la habitación."
	Escribir "|--------------------||--------------------||--------------------||--------------------||--------------------|"
	Esperar Tecla
	Limpiar Pantalla
	Escribir "|--------------------||--------------------||--------------------||--------------------||--------------------|"
	Escribir " En cada habitación deberás responder una pregunta, si hay un fantasma recibes una extra."
	Escribir "|--------------------||--------------------||--------------------||--------------------||--------------------|"
	Esperar Tecla
	Escribir "|--------------------||--------------------||--------------------|"
	Escribir " ¿Listo para superar esta mansión embrujada? Presiona Enter"
	Escribir "|--------------------||--------------------||--------------------|"
	Esperar Tecla
	Limpiar Pantalla
	Escribir "|--------------------||--------------------|"
	Escribir "               ¡Buena suerte!"
	Escribir "|--------------------||--------------------|"
	Esperar 1 Segundos
	Limpiar Pantalla
	Dulce(pp,1,1)
	RellenarVector(pp, filas, columnas)
	ImprimirVector(pp, filas, columnas)
	MoverJugador(pp, filas, columnas)
FinAlgoritmo

Funcion Dulce(pp,cx,cy)
	casa = Aleatorio(2,3)
	casa2 = Aleatorio(2,3)
	pp[cx,cy] = "[#]"
	pp[casa,casa2] = "[C]"
	dulces1 = Aleatorio(3,4)
	dulces2 = Aleatorio(3,4)
	Si dulces1 == casa y dulces2 == casa2 Entonces
		Dulce(pp,1,1)
	SiNo
		pp[dulces1,dulces2] = "[D]"
	FinSi
FinFuncion
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
Funcion RellenarVector(arreglo, filas, columnas)
	Para i <- 1 Hasta filas Hacer
		Para j <- 1 Hasta columnas Hacer
			arreglo[i,j] = arreglo[i,j]
		FinPara
	FinPara
FinFuncion
Funcion PyR(1)
	Dimension Preguntas[10]
	Dimension Respuestas[10]
	rCorrecta = FALSO
	Preguntas[1] = "¿Cuánto es 1 + 1?"
	Preguntas[2] = "¿Cuánto es 2 + 2?"
	Preguntas[3] = "¿Cuánto es 3 + 3?"
	Preguntas[4] = "¿Cuánto es 4 + 4?"
	Preguntas[5] = "¿Cuánto es 5 + 5?"
	Preguntas[6] = "¿Cuánto es 6 + 6?"
	Preguntas[7] = "¿Cuánto es 7 + 7?"
	Preguntas[8] = "¿Cuánto es 8 + 8?"
	Preguntas[9] = "¿Cuánto es 9 + 9?"
	Preguntas[10] = "¿Cuánto es 10 + 10?"
	
	Respuestas[1] = "2"
	Respuestas[2] = "4"
	Respuestas[3] = "6"
	Respuestas[4] = "8"
	Respuestas[5] = "10"
	Respuestas[6] = "12"
	Respuestas[7] = "14"
	Respuestas[8] = "16"
	Respuestas[9] = "18"
	Respuestas[10] = "20"
	
	pA = Aleatorio(1,10)
	Mientras rCorrecta = FALSO Hacer
		Escribir "|--------------------||--------------------|"
		Escribir "Responde bien para continuar"
		Escribir Preguntas[pA]
		Leer snwr
		Si Respuestas[pA] == snwr Entonces
			rCorrecta = VERDADERO
		FinSi
	FinMientras
FinFuncion
Funcion MoverJugador(arreglo, filas, columnas)
	nivelesT = 16
	nivelActual = 1
	dulcesRec <- Aleatorio(1,nivelesT)
	ccDulces <- 0
	ccDulcAnt <- -1
	CX <- 1
	CY <- 1
	arreglo[CX,CY] = "[P]"
	casillaANt <- "[#]"
	VIC = FALSO
	Mientras VIC = FALSO Hacer
		Escribir "|--------------------||--------------------|"
		Escribir " Tienes ", ccDulces,"/",dulcesRec," dulces.", ccDulcAnt
		Escribir "|--------------------||--------------------|"
		Escribir " Hacia dónde te mueves W/A/S/D "
		Escribir "|--------------------||--------------------|"
		Repetir
			Leer mov
		Hasta Que Mayusculas(mov) == "W" o Mayusculas(mov) == "A" o Mayusculas(mov) == "S" o Mayusculas(mov) == "D"
		arreglo[CX,CY] = casillaANt
		Si mov == "W" Entonces
			Si CX > 1 Entonces
				CX <- CX - 1
			FinSi
		SiNo
			Si mov == "S" Entonces
				Si CX < filas Entonces
					CX <- CX + 1
				FinSi
			SiNo
				Si mov == "D" Entonces
					Si CY < columnas Entonces
						CY <- CY + 1
					FinSi
				SiNo
					Si mov == "A" Entonces
						Si CY > 1 Entonces 
							CY <- CY - 1
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
		casillaANt = arreglo[CX,CY]
		Si casillaANt == "[#]" Entonces
			PyR(1)
			fanfAl = Aleatorio(1,10)
			Si fanfAl == 1 Entonces
				Escribir "|--------------------||--------------------|"
				Escribir " ¡Te has topado con un fantaaaAAAAAaaasma!"
				
				PyR(1)
			FinSi
		FinSi
		Si casillaANt == "[D]" Entonces
			ccDulces <- ccDulces + 1
			ccDulcAnt <- ccDulces
			casillaANt = "[#]"
		FinSi
		Si casillaANt == "[C]" Entonces
			Si ccDulcAnt == ccDulces Entonces
				Si ccDulces == dulcesRec Entonces
					VIC = VERDADERO
				SiNo
					//casillaANt = "[#]"
					ccDulcAnt <- ccDulcAnt - 1
					Esperar 1 Segundos
					Limpiar Pantalla
					Escribir "|--------------------||--------------------||--------------------|"
					Escribir "                    Cargando siguiente sala..."
					Escribir "|--------------------||--------------------||--------------------|"
					Esperar 1 Segundos
					//arreglo[CX,CY] = "[#]"
					Limpiar Pantalla
					Dulce(arreglo,CX,CY)
					//RellenarVector(arreglo, filas, columnas)
					//ImprimirVector(arreglo, filas, columnas)
					CX = 1
					CY = 1
					arreglo[CX,CY] = "[P]"
				FinSi
			SiNo
				Escribir "|--------------------||--------------------||--------------------|"
				Escribir "        ¡Recolecta el dulce antes de ir a la siguiente sala!"
				Escribir "|--------------------||--------------------||--------------------|"
				Esperar 1 Segundos	
			FinSi
		FinSi
		arreglo[CX,CY] = "[P]"
		
		Limpiar Pantalla
		RellenarVector(arreglo, filas, columnas)
		ImprimirVector(arreglo, filas, columnas)
	FinMientras
	//
	Limpiar Pantalla
	Escribir "|--------------------||--------------------||--------------------|"
	Escribir " ¡Has encontrado todos los dulces, felicidades!"
	Escribir "|--------------------||--------------------||--------------------|"
FinFuncion
	