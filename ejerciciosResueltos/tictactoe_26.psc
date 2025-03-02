Funcion MostarTablero  ( Tab2 ) // Muestra el tablero y sirve para actualizarlo
	Escribir " "
	Escribir "      ||     ||     "
	Escribir "   ",Tab2[1],"   ||  ",Tab2[2],"   ||  ",Tab2[3]
	Escribir "     1||    2||    3"
	Escribir " =====++=====++======"
	Escribir "      ||     ||     "
	Escribir "   ",Tab2[4],"   ||  ",Tab2[5],"   ||  ",Tab2[6]
	Escribir "     4||    5||    6"
	Escribir " =====++=====++======"
	Escribir "      ||     ||     "
	Escribir "   ",Tab2[7],"   ||  ",Tab2[8],"   ||  ",Tab2[9]
	Escribir "     7||    8||    9"
	Escribir " "
Fin Funcion

Funcion ColocarFicha (ficha, tablero, value) // Colocar la ficha en el tablero
	Si tablero(ficha) = "" Entonces
		tablero[ficha] = value
	SiNo
		TFEmpate <- Empate(tablero)
		Si TFEmpate = FALSO Entonces
			Escribir "Casilla ocupada, aquí otro intento" // Si está ocupada, avisarle y pasarle al otro jugador
			Leer ficha
			ColocarFicha(ficha, tablero, value)
		FinSi
	FinSi
FinFuncion

Funcion TFEmpate <- Empate(tablero)
	contador <- 0 // Contará cada casila si cumple la condición, su valor será 9
	Para i <- 1 Hasta 9 Hacer
		Si tablero[i] = "X" o tablero[i] = "O" Entonces
			contador <- contador + 1
		FinSi
	FinPara
	Si contador >= 9 Entonces
		TFEmpate <- VERDADERO
	SiNo
		TFEmpate <- FALSO
	FinSi
FinFuncion

Funcion VEvalue <- Victoria(tablero, TFEmpate)
	VEvalue = 0
	Si TFEmpate = FALSO Entonces
		// Ver si ganó X
		Si (tablero(1) = "X" y tablero(5) = "X" y tablero(9) = "X") o (tablero(7) = "X" y tablero(5) = "X" y tablero(3) = "X") o (tablero(1) = "X" y tablero(2) = "X" y tablero(3) = "X") o (tablero(4) = "X" y tablero(5) = "X" y tablero(6) = "X") o (tablero(7) = "X" y tablero(8) = "X" y tablero(9) = "X") o (tablero(1) = "X" y tablero(4) = "X" y tablero(7) = "X") o (tablero(2) = "X" y tablero(5) = "X" y tablero(8) = "X") o (tablero(3) = "X" y tablero(6) = "X" y tablero(9) = "X") Entonces
			VEvalue <- 1
		FinSi
		
		// Ver si ganó O
		Si (tablero(1) = "O" y tablero(5) = "O" y tablero(9) = "O") o (tablero(7) = "O" y tablero(5) = "O" y tablero(3) = "O") o (tablero(1) = "O" y tablero(2) = "O" y tablero(3) = "O") o (tablero(4) = "O" y tablero(5) = "O" y tablero(6) = "O") o (tablero(7) = "O" y tablero(8) = "O" y tablero(9) = "O") o (tablero(1) = "O" y tablero(4) = "O" y tablero(7) = "O") o (tablero(2) = "O" y tablero(5) = "O" y tablero(8) = "O") o (tablero(3) = "O" y tablero(6) = "O" y tablero(9) = "O") Entonces
			VEvalue <- 2
		FinSi
	SiNo
		VEvalue = 3
	FinSi
	
FinFuncion
Funcion jugardor(Tab2, simb)
    Definir player Como Entero
    Repetir
        Escribir "Seleccione una casilla disponible "
        Leer player
    Hasta Que player >= 1 Y player <= 9 Y Tab2[player] = ""
    
    ColocarFicha(player, Tab2, simb)
    MostarTablero(Tab2) // Actualizar tablero
FinFuncion

Algoritmo tictactoe
	Dimension Tab2[9]
	seguirJugando = VERDADERO
	MostarTablero(Tab2)
	
	TFEmpate <- Empate(Tab2)
	VEvalue <- Victoria(Tab2, TFEmpate)
	
	Mientras seguirJugando = VERDADERO y TFEmpate = FALSO Hacer
		TFEmpate <- Empate(Tab2)
		VEvalue <- Victoria(Tab2, TFEmpate)
		Si VEvalue = 1 o VEvalue = 2 o VEvalue = 3 Entonces
			seguirJugando = FALSO
		SiNo
			Escribir "Turno del jugador 1 X, seleccione una casilla"
			jugardor(Tab2, "X")
			Escribir "|----------|----------|"
			Escribir "Turno del jugador 2 O, seleccione una casilla"
			jugardor(Tab2, "O")
			Escribir "|----------|----------|"
		FinSi
	FinMientras
	
	// Dictaminar victora/derrota/empate
	Si VEvalue = 1 Entonces
		Escribir "Ganó la X"
	SiNo
		Si VEvalue = 2 Entonces
			Escribir "Ganó la O"
		SiNo
			Escribir "Empate"
		FinSi
	FinSi
FinAlgoritmo