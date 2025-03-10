Algoritmo ahorcado_34
	Definir palabra, palabraAdivinar, victima Como Caracter
	Definir length, intentos, acertoLetra, guardarPalabraRepetida, ganoAdivinando Como Entero
	Definir falloPalabra, palabraRepetida, salvoMuneco Como Logico
	guardarPalabraRepetida = 0
	ganoAdivinando = 0
	intentos = 10
	Dimension palabrasAleatorias[16]
	palabrasAleatorias[1] = "No hablar�"
	palabrasAleatorias[2] = "Daniel, me est�s matando"
	palabrasAleatorias[3] = "Enjambre"
	palabrasAleatorias[4] = "Fito Paez"
	palabrasAleatorias[5] = "Gustavo Cerati"
	palabrasAleatorias[6] = "Soda Stereo"
	palabrasAleatorias[7] = "Zo�"
	palabrasAleatorias[8] = "Mon Laferte"
	palabrasAleatorias[9] = "Shakira"
	palabrasAleatorias[10] = "Rapunzel"
	palabrasAleatorias[11] = "Andr�s Cepeda"
	palabrasAleatorias[12] = "Andr�s Calamaro"
	palabrasAleatorias[13] = "Enanitos Verdes"
	palabrasAleatorias[14] = "Juanes"
	palabrasAleatorias[15] = "Juan Carlos Alvarado"
	palabrasAleatorias[16] = "Aterciopelados"
	palabra = palabrasAleatorias[Aleatorio(1,16)]
	length = Longitud(palabra)
	Dimension guardarIntentos[intentos*2]
	Dimension pp[length]
	falloPalabra = FALSO
	palabraRepetida = FALSO
	salvoMuneco = FALSO
	acertoLetra = 0
	victima = "Jos� Jos�"
	// Cargar juego
	Escribir "|--------------------||--------------------|"
	Escribir "                 Bienvenido"
	Escribir "|--------------------||--------------------|"
	Esperar 2 Segundos
	Limpiar Pantalla
	CargarMuneco(0)
	Escribir "|--------------------||--------------------||--------------------|"
	Escribir " La persona es ", victima,"."
	Escribir "|--------------------||--------------------||--------------------|"
	Esperar 2 Segundos
	Limpiar Pantalla
	CargarMuneco(0)
	Escribir "|--------------------||--------------------|"
	Escribir "            �Crees poder salvarlo?"
	Escribir "|--------------------||--------------------|"
	Esperar 1 Segundos
	Limpiar Pantalla
	Escribir "|--------------------||--------------------|"
	Escribir "        Presiona Enter para confirmar"
	Escribir "|--------------------||--------------------|"
	Esperar Tecla
	Limpiar Pantalla
	Escribir "|--------------------||--------------------|"
	Escribir "      Su vida est� ahora en las tuyas."
	Escribir "|--------------------||--------------------|"
	Esperar 2 Segundos
	Limpiar Pantalla
	// Cargar barra donde se pondr�n las palabras
	Para i <- 1 Hasta length Hacer
		// Verificar si tiene espacios o comas. Mejora el acabado y facilita el juego
		Si Subcadena(palabra,i,i) = " " Entonces
			pp[i] = " "
		SiNo
			Si Subcadena(palabra,i,i) = "," Entonces
				pp[i] = ","
			SiNo
				pp[i] = "_"
			FinSi
		FinSi
		Escribir pp[i]," " Sin Saltar // Imprimir inicial
	FinPara
	//
	Mientras intentos <> 0 Hacer
		//
		Escribir ""
		CargarMuneco(intentos)
		// Actualizar arreglo
		Para i <- 1 Hasta length Hacer
			Escribir pp[i]," " Sin Saltar
		FinPara
		Escribir ""
		Escribir "|--------------------||--------------------|"
		Leer palabraAdivinar
		// Guardar y ver si la palabra ya se repiti�
		Para i <- 1 Hasta guardarPalabraRepetida+1 Hacer
			Si guardarIntentos[i] == palabraAdivinar Entonces
				palabraRepetida <- VERDADERO
				intentos <- intentos - 2
				Limpiar Pantalla
				Escribir "|--------------------||--------------------|"
				Escribir "       �Ups! �Repetiste la palabra? :)"
				Escribir "|--------------------||--------------------|"
				Esperar 1 Segundos
				Limpiar Pantalla
				Escribir "|--------------------||--------------------|"
				Escribir "       �Eso se castiga con -2 intentos!"
				Escribir "|--------------------||--------------------|"
				Esperar 2 Segundos
				Limpiar Pantalla
			FinSi
		FinPara
		
		Si palabraRepetida = FALSO Entonces
			guardarPalabraRepetida <- guardarPalabraRepetida + 1
			guardarIntentos[guardarPalabraRepetida] = palabraAdivinar
			// Ver si alguna letra de la palabraAdivinar est� en la palabra
			Para i <- 1 Hasta Longitud(palabraAdivinar) Hacer
				Para k <- 1 Hasta length Hacer
					// Si la letra est� en las letras de la palabra entonces
					Si Subcadena(palabraAdivinar,i,i) == Subcadena(palabra,k,k) Entonces
						// Reemplazar "_" por la letra de la palabraAdivinar
						pp[k] = Subcadena(palabraAdivinar,i,i)
						acertoLetra = acertoLetra + 1
						// Si acert� 1 letra siendo una, no hacer nada
						Si Longitud(palabraAdivinar) == 1 Entonces
							falloPalabra = FALSO
						FinSi
					SiNo
						falloPalabra = VERDADERO
					FinSi
					// A pesar de que acertara algunas letras, si YA est�n en s� adivinadas, restarles un intento
					// El que lea esto que me ayude, ya ando loco, no s� qu� hacer
					Si Subcadena(palabraAdivinar,i,i) == pp[k] y intentos <> 10 Entonces
						falloPalabra = VERDADERO
						acertoPalabra = -1
					FinSi
				FinPara
			FinPara
			// Si la letra no era
			// Si acert� 0 letras o m�s de una, si acert� una no pasa nada; esto es para darle m�s emoci�n al juego
			// Y as� no depender si repiti� una o no acert� ninguna ;)
			Si falloPalabra = VERDADERO Entonces
				Si acertoLetra = 0 Entonces
					Escribir "|--------------------||--------------------|"
					Escribir "             No acertaste ni una..."
					Escribir "|--------------------||--------------------|"
					Esperar 1 Segundos
					Limpiar Pantalla
					intentos <- intentos - 1
					falloPalabra = FALSO
					acertoLetra = 0
				SiNo
					intentos <- intentos - 1
					falloPalabra = FALSO
					acertoLetra = 0
				FinSi
			FinSi
		FinSi
		// Reiniciar
		acertoLetra = 0
		falloPalabra = Verdadero
		palabraRepetida = FALSO
		
		// Verificar si, mediante la completaci�n de palabras y no insertando la palabra en s�, la adivin�
		Para i <- 1 Hasta length Hacer
			Si pp[i] = Subcadena(palabra,i,i) Entonces
				ganoAdivinando <- ganoAdivinando + 1
			FinSi
		FinPara
		// Gan� insertando la palabra completa en s� o adivinando
		Si palabraAdivinar == palabra o ganoAdivinando == length Entonces
			Limpiar Pantalla
			salvoMuneco = VERDADERO
			intentos = 0
		SiNo
			ganoAdivinando = 0
		FinSi
	FinMientras
	// Verificar si gan� o perdi�
	FinalJuego(salvoMuneco)
FinAlgoritmo
// Funciones
Funcion CargarMuneco(intentos)
	Limpiar Pantalla
	Segun intentos Hacer
		10:
			Escribir "        "
			Escribir "        "
			Escribir "        "
			Escribir "        "
			Escribir "        "
			Escribir "        "
			Escribir "=======|"
		9:
			Escribir "        "
			Escribir "        "
			Escribir "        "
			Escribir "        "
			Escribir "        "
			Escribir "       |"
			Escribir "=======|"
		8:
			Escribir "        "
			Escribir "        "
			Escribir "        "
			Escribir "        "
			Escribir "       |"
			Escribir "       |"
			Escribir "=======|"
		7:
			Escribir "        "
			Escribir "        "
			Escribir "        "
			Escribir "       |"
			Escribir "       |"
			Escribir "       |"
			Escribir "=======|"
		6:
			Escribir "        "
			Escribir "        "
			Escribir "       |"
			Escribir "       |"
			Escribir "       |"
			Escribir "       |"
			Escribir "=======|"
		5:
			Escribir "        "
			Escribir "       |"
			Escribir "       |"
			Escribir "       |"
			Escribir "       |"
			Escribir "       |"
			Escribir "=======|"
		4:
			Escribir "   +===+"
			Escribir "       |"
			Escribir "       |"
			Escribir "       |"
			Escribir "       |"
			Escribir "       |"
			Escribir "=======|"
		3:
			Escribir "   +===+"
			Escribir "   |   |"
			Escribir "       |"
			Escribir "       |"
			Escribir "       |"
			Escribir "       |"
			Escribir "=======|"
		2:
			Escribir "   +===+"
			Escribir "   |   |"
			Escribir "   O   |"
			Escribir "       |"
			Escribir "       |"
			Escribir "       |"
			Escribir "=======|"
		1:
			Escribir "   +===+"
			Escribir "   |   |"
			Escribir "   O   |"
			Escribir "  /|\  |"
			Escribir "       |"
			Escribir "       |"
			Escribir "=======|"
		0:
			Escribir "   +===+"
			Escribir "   |   |"
			Escribir "   O   |"
			Escribir "  /|\  |"
			Escribir "  / \  |"
			Escribir "       |"
			Escribir "=======|"
		-1:
			Escribir "   +===+"
			Escribir "   |   |"
			Escribir "   |   | Muri�..."
			Escribir "   O   |"
			Escribir "  /|\  |"
			Escribir "  / \  |"
			Escribir "=======|"
	FinSegun
FinFuncion

Funcion FinalJuego(salvoMuneco)
	Si salvoMuneco = VERDADERO Entonces
		Escribir "|--------------------||--------------------|"
		Escribir "           �Bien! ��Lo salvaste!!"
		Escribir "|--------------------||--------------------|"
		Esperar 2 Segundos
		Limpiar Pantalla
		Escribir "    +--------------------------+"
		Escribir "    |  �Gracias por salvarme!  |"
		Escribir "    +--------------------------+"
		Escribir "      /"
		Escribir "     / "
		Escribir "   O   "
		Escribir "  /|\  "
		Escribir "  / \  "
		Escribir "+============"
	SiNo
		CargarMuneco(intentos)
		Escribir "|--------------------||--------------------|"
		Escribir "              ... �de verdad?"
		Escribir "|--------------------||--------------------|"
		Esperar 1 Segundos
		Limpiar Pantalla
		CargarMuneco(-1)
		Escribir "|--------------------||--------------------||--------------------|"
		Escribir "  Acabaste con ", victima,"... le has fallado..."
		Escribir "|--------------------||--------------------||--------------------"
	FinSi
FinFuncion
	