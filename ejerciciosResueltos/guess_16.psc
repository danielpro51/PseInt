Algoritmo guess_16
	Definir intentos Como Entero
	Definir ganador Como Logico
	Definir palabraUsuario, palabra Como Caracter
	intentos = 3
	ganador = FALSO
	palabra = "PSeInt"
	Escribir "|--------------------||--------------------|"
	Escribir "�Bienvenido a este juego de adivinanzas!"
	Escribir "|--------------------||--------------------|"
	Esperar 3 Segundos
	Limpiar Pantalla
	Escribir "|--------------------||--------------------|"
	Escribir "Las reglas del juego son simples: 3 intentos, 1 palabra"
	Escribir "|--------------------||--------------------|"
	Esperar 3 Segundos
	Limpiar Pantalla
	Escribir "|--------------------||--------------------|"
	Escribir "�Buena suerte adivinando cu�l es!"
	Escribir "|--------------------||--------------------|"
	Esperar 3 Segundos
	Limpiar Pantalla
	Escribir "|--------------------||--------------------|"
	Escribir "�La palabra es? " Sin Saltar
	Mientras intentos <> 0 Y ganador = FALSO Hacer
		Leer palabraUsuario
		Si palabraUsuario = palabra Entonces
			Si intentos = 3 Entonces
				Limpiar Pantalla
				Escribir "|--------------------||--------------------|"
				Escribir "�Ganaste a la primera! ���Felicidades!!!"
				Escribir "|--------------------||--------------------|"
				ganador = VERDADERO
				Esperar 2 Segundos
			SiNo
				Limpiar Pantalla
				Escribir "|--------------------||--------------------|"
				Escribir "�Ganaste en ", intentos," intentos!"
				ganador = VERDADERO
				Escribir "|--------------------||--------------------|"
				Esperar 2 Segundos
			FinSi
		SiNo
			intentos <- intentos - 1
			Limpiar Pantalla
			Escribir "|--------------------||--------------------|"
			Escribir "�Fallaste! Esa no era la palabra... Te quedan ", intentos," intentos."
			Escribir "|--------------------||--------------------|"
			Esperar 2 Segundos
			Limpiar Pantalla
			Escribir "|--------------------||--------------------|"
			Escribir "�La palabra es? " Sin Saltar
		FinSi
	FinMientras
	Si ganador = FALSO Entonces
		Limpiar Pantalla
		Escribir "|--------------------||--------------------|"
		Escribir "�Perdiste! La palabra era ", palabra,". �Mejor suerte la pr�xima!"
		Escribir "|--------------------||--------------------|"
		Esperar 2 Segundos
	FinSi
	Limpiar Pantalla
	Escribir "|--------------------||--------------------|"
	Escribir "�Gracias por participar en este juego de adivinanzas!"
	Escribir "|--------------------||--------------------|"
FinAlgoritmo
