Algoritmo guess_16
	Definir intentos Como Entero
	Definir ganador Como Logico
	Definir palabraUsuario, palabra Como Caracter
	intentos = 3
	Dimension guardarIntentos[intentos]
	verInRepp = 0
	ganador = FALSO
	palabra = "PSeInt"
	Escribir "|--------------------||--------------------|"
	Escribir "  ¡Bienvenido a este juego de adivinanzas!"
	Escribir "|--------------------||--------------------|"
	Esperar 3 Segundos
	Limpiar Pantalla
	Escribir "|--------------------||--------------------|"
	Escribir "Las reglas del juego son simples: 3 intentos, 1 palabra"
	Escribir "|--------------------||--------------------|"
	Esperar 3 Segundos
	Limpiar Pantalla
	Escribir "|--------------------||--------------------|"
	Escribir "     ¡Buena suerte adivinando cuál es!"
	Escribir "|--------------------||--------------------|"
	Esperar 3 Segundos
	Limpiar Pantalla
	Escribir "|--------------------||--------------------|"
	Escribir "¿La palabra es? " Sin Saltar
	Mientras intentos <> 0 Y ganador = FALSO Hacer
		Leer palabraUsuario
		palabraRepe <- Falso
		Si palabraUsuario = palabra Entonces
			Si intentos = 3 y verInRepp < 3 Entonces
				Limpiar Pantalla
				Escribir "|--------------------||--------------------|"
				Escribir "  ¡Ganaste a la primera! ¡¡¡Felicidades!!!"
				Escribir "|--------------------||--------------------|"
				ganador = VERDADERO
				Esperar 2 Segundos
			SiNo
				Limpiar Pantalla
				Escribir "|--------------------||--------------------|"
				Escribir "    ¡Ganaste en ", intentos," intentos!"
				ganador = VERDADERO
				Escribir "|--------------------||--------------------|"
				Esperar 2 Segundos
			FinSi
		SiNo
			//
			// Verificar si la palabra ya existe en el arreglo
			Para i <- 1 Hasta verInRepp+1 Hacer
				Si guardarIntentos[i] == palabraUsuario Entonces
					palabraRepe <- VERDADERO
					Limpiar Pantalla
					Escribir "|--------------------||--------------------|"
					Escribir "     ¡Ups! ¿Te repetiste de palabra? ", intentos
					Escribir "|--------------------||--------------------|"
					Esperar 2 Segundos
					Limpiar Pantalla
					Escribir "|--------------------||--------------------|"
					Escribir "¿La palabra es? " Sin Saltar
				FinSi
			FinPara
			
			// Si no está repetida, la almacena
			Si palabraRepe = FALSO Entonces
				verInRepp <- verInRepp + 1
				intentos <- intentos - 1
				guardarIntentos[verInRepp] = palabraUsuario
				Limpiar Pantalla
				Escribir "|--------------------||--------------------|"
				Escribir "¡Fallaste! Esa no era la palabra... Te quedan ", intentos," intentos."
				Escribir "|--------------------||--------------------|"
				Esperar 2 Segundos
				Limpiar Pantalla
				Escribir "|--------------------||--------------------|"
				Escribir "¿La palabra es? " Sin Saltar
			FinSi
			//
		FinSi
	FinMientras
	Si ganador = FALSO Entonces
		Limpiar Pantalla
		Escribir "|--------------------||--------------------|"
		Escribir "¡Perdiste! La palabra era ", palabra,". ¡Mejor suerte la próxima!"
		Escribir "|--------------------||--------------------|"
		Esperar 2 Segundos
	FinSi
	Limpiar Pantalla
	Escribir "|--------------------||--------------------|"
	Escribir "¡Gracias por participar en este juego de adivinanzas!"
	Escribir "|--------------------||--------------------|"
FinAlgoritmo
