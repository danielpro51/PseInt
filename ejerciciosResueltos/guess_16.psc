Algoritmo guess_16
	Definir intentos Como Entero
	Definir ganador Como Logico
	Definir palabraUsuario, palabra Como Caracter
	intentos = 3
	ganador = FALSO
	palabra = "PSeInt"
	Escribir "Adivina la palabra"
	Mientras intentos <> 0 Y ganador = FALSO Hacer
		Leer palabraUsuario
		Si palabraUsuario = palabra Entonces
			Si intentos = 3 Entonces
				Escribir "¡Ganaste a la primera!"
				ganador = VERDADERO
			SiNo
				Escribir "¡Ganaste en ", intentos," intentos!"
				ganador = VERDADERO
			FinSi
		SiNo
			intentos <- intentos - 1
			Escribir "Esa no es la palabra. Te quedan ", intentos," intentos"
		FinSi
	FinMientras
	Si ganador = FALSO Entonces
		Escribir "¡Perdiste! La palabra era ", palabra
	FinSi
FinAlgoritmo
