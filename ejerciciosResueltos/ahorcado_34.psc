Funcion CargarMuneco(intentos)
	Limpiar Pantalla
	Si intentos = 10 Entonces
		Escribir "        "
		Escribir "        "
		Escribir "        "
		Escribir "        "
		Escribir "        "
		Escribir "        "
		Escribir "=======|"
	FinSi
	Si intentos = 9 Entonces
		Escribir "        "
		Escribir "        "
		Escribir "        "
		Escribir "        "
		Escribir "        "
		Escribir "       |"
		Escribir "=======|"
	FinSi
	Si intentos = 8 Entonces
		Escribir "        "
		Escribir "        "
		Escribir "        "
		Escribir "        "
		Escribir "       |"
		Escribir "       |"
		Escribir "=======|"
	FinSi
	Si intentos = 7 Entonces
		Escribir "        "
		Escribir "        "
		Escribir "        "
		Escribir "       |"
		Escribir "       |"
		Escribir "       |"
		Escribir "=======|"
	FinSi
	Si intentos = 6 Entonces
		Escribir "        "
		Escribir "        "
		Escribir "       |"
		Escribir "       |"
		Escribir "       |"
		Escribir "       |"
		Escribir "=======|"
	FinSi
	Si intentos = 5 Entonces
		Escribir "        "
		Escribir "       |"
		Escribir "       |"
		Escribir "       |"
		Escribir "       |"
		Escribir "       |"
		Escribir "=======|"
	FinSi
	Si intentos = 4 Entonces
		Escribir "   +===+"
		Escribir "       |"
		Escribir "       |"
		Escribir "       |"
		Escribir "       |"
		Escribir "       |"
		Escribir "=======|"
	FinSi
	Si intentos = 3 Entonces
		Escribir "   +===+"
		Escribir "   |   |"
		Escribir "       |"
		Escribir "       |"
		Escribir "       |"
		Escribir "       |"
		Escribir "=======|"
	FinSi
	Si intentos = 2 Entonces
		Escribir "   +===+"
		Escribir "   |   |"
		Escribir "   O   |"
		Escribir "       |"
		Escribir "       |"
		Escribir "       |"
		Escribir "=======|"
	FinSi
	Si intentos = 1 Entonces
		Escribir "   +===+"
		Escribir "   |   |"
		Escribir "   O   |"
		Escribir "  /|\  |"
		Escribir "       |"
		Escribir "       |"
		Escribir "=======|"
	FinSi
	Si intentos = 0 Entonces
		Escribir "   +===+"
		Escribir "   |   |"
		Escribir "   O   |"
		Escribir "  /|\  |"
		Escribir "  / \  |"
		Escribir "       |"
		Escribir "=======|"
	FinSi
	Si intentos < 0 Entonces
		Escribir "   +===+"
		Escribir "   |   |"
		Escribir "   |   | Murió..."
		Escribir "   O   |"
		Escribir "  /|\  |"
		Escribir "  / \  |"
		Escribir "=======|"
	FinSi
FinFuncion
Algoritmo ahorcado_34
	Definir palabra, palabraAdivinar, victima Como Caracter
	Definir length, intentos, acertoLetra, guardarPalabraRepetida, ganoAdivinando Como Entero
	Definir falloPalabra, palabraRepetida, salvoMuneco Como Logico
	guardarPalabraRepetida = 0
	ganoAdivinando = 0
	intentos = 10
	Dimension palabrasAleatorias[16]
	palabrasAleatorias[1] = "No hablaré"
	palabrasAleatorias[2] = "Daniel, me estás matando"
	palabrasAleatorias[3] = "Enjambre"
	palabrasAleatorias[4] = "Fito Paez"
	palabrasAleatorias[5] = "Gustavo Cerati"
	palabrasAleatorias[6] = "Soda Stereo"
	palabrasAleatorias[7] = "Zoé"
	palabrasAleatorias[8] = "Mon Laferte"
	palabrasAleatorias[9] = "Shakira"
	palabrasAleatorias[10] = "Rapunzel"
	palabrasAleatorias[11] = "Andrés Cepeda"
	palabrasAleatorias[12] = "Andrés Calamaro"
	palabrasAleatorias[13] = "Enanitos Verdes"
	palabrasAleatorias[14] = "Juanes"
	palabrasAleatorias[15] = "Juan Carlos Alvarado"
	palabrasAleatorias[16] = "Aterciopelados"
	palabra = palabrasAleatorias[Aleatorio(1,16)]
	length = Longitud(palabra)
	Dimension guardarIntentos[intentos]
	Dimension pp[length]
	falloPalabra = FALSO
	palabraRepetida = FALSO
	salvoMuneco = FALSO
	acertoLetra = 0
	victima = "José José"
	// Cargar juego
	Escribir "|--------------------||--------------------|"
	Escribir "                 Bienvenido"
	Escribir "|--------------------||--------------------|"
	Esperar 2 Segundos
	Limpiar Pantalla
	// Cargar muñeco inicial
	Escribir "   +===+"
	Escribir "   |   |"
	Escribir "   O   |"
	Escribir "  /|\  |"
	Escribir "  / \  |"
	Escribir "       |"
	Escribir "=======|"
	Escribir "|--------------------||--------------------||--------------------|"
	Escribir " La persona es ", victima,"."
	Escribir "|--------------------||--------------------||--------------------|"
	Esperar 2 Segundos
	Limpiar Pantalla
	Escribir "   +===+"
	Escribir "   |   |"
	Escribir "   O   |"
	Escribir "  /|\  |"
	Escribir "  / \  |"
	Escribir "       |"
	Escribir "=======|"
	Escribir "|--------------------||--------------------|"
	Escribir "            ¿Crees poder salvarlo?"
	Escribir "|--------------------||--------------------|"
	Esperar 1 Segundos
	Limpiar Pantalla
	Escribir "|--------------------||--------------------|"
	Escribir "        Presiona Enter para confirmar"
	Escribir "|--------------------||--------------------|"
	Esperar Tecla
	Limpiar Pantalla
	Escribir "|--------------------||--------------------|"
	Escribir "      Su vida está ahora en las tuyas."
	Escribir "|--------------------||--------------------|"
	Esperar 2 Segundos
	Limpiar Pantalla
	// Cargar barra donde se pondrán las palabras
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
		// Verificar si, mediante la completación de palabras y no insertando la palabra en sí, la adivinó
		Para i <- 1 Hasta length Hacer
			Si pp[i] = Subcadena(palabra,i,i) Entonces
				ganoAdivinando <- ganoAdivinando + 1
			FinSi
		FinPara
		// Ganó insertando la palabra completa en sí o adivinando
		Si palabraAdivinar == palabra o ganoAdivinando == length Entonces
			Limpiar Pantalla
			salvoMuneco = VERDADERO
			intentos = 0
		SiNo
			ganoAdivinando = 0
		FinSi
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
		// Guardar y ver si la palabra ya se repitió
		Para i <- 1 Hasta guardarPalabraRepetida+1 Hacer
			Si guardarIntentos[i] == palabraAdivinar Entonces
				palabraRepetida <- VERDADERO
				intentos <- intentos - 1
				Limpiar Pantalla
				Escribir "|--------------------||--------------------|"
				Escribir "       ¡Ups! ¿Repetiste la palabra? :)"
				Escribir "|--------------------||--------------------|"
				Esperar 1 Segundos
				Limpiar Pantalla
				Escribir "|--------------------||--------------------|"
				Escribir "              ¡Eso se castiga!"
				Escribir "|--------------------||--------------------|"
				Esperar 2 Segundos
				Limpiar Pantalla
			FinSi
		FinPara
		
		Si palabraRepetida = FALSO Entonces
			guardarPalabraRepetida <- guardarPalabraRepetida + 1
			guardarIntentos[guardarPalabraRepetida] = palabraAdivinar
			// Ver si alguna letra de la palabraAdivinar está en la palabra
			Para i <- 1 Hasta Longitud(palabraAdivinar) Hacer
				Para k <- 1 Hasta length Hacer
					// Si la letra está en las letras de la palabra entonces
					Si Subcadena(palabraAdivinar,i,i) == Subcadena(palabra,k,k) Entonces
						// Reemplazar "_" por la letra de la palabraAdivinar
						pp[k] = Subcadena(palabraAdivinar,i,i)
						acertoLetra = acertoLetra + 1
						// Si acertó 1 letra siendo una, no hacer nada
						Si Longitud(palabraAdivinar) == 1 Entonces
							falloPalabra = FALSO
						FinSi
					SiNo
						falloPalabra = VERDADERO
					FinSi
				FinPara
			FinPara
			
			// Si la letra no era
			// Si acertó 0 letras o más de una, si acertó una no pasa nada; esto es para darle más emoción al juego
			// Y así no depender si repitió una o no acertó ninguna ;)
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
					//SiNo
					//	Si acertoLetra > 0 Entonces
					//		Escribir "|--------------------||--------------------|"
					//		Escribir "       Acertaste algunas; pero te faltan"
					//		Escribir "|--------------------||--------------------|"
					//		Esperar 1 Segundos
					//		Limpiar Pantalla
					//		intentos <- intentos - 1
					//		falloPalabra = FALSO
					//		acertoLetra = 0
					//	FinSi
				FinSi
			FinSi
		FinSi
		// Reiniciar
		acertoLetra = 0
		falloPalabra = Verdadero
		palabraRepetida = FALSO
	FinMientras
	// Verificar si ganó o perdió
	Si salvoMuneco = VERDADERO Entonces
		Escribir "|--------------------||--------------------|"
		Escribir "           ¡Bien! ¡¡Lo salvaste!!"
		Escribir "|--------------------||--------------------|"
		Esperar 2 Segundos
		Limpiar Pantalla
		Escribir "    +--------------------------+"
		Escribir "    |  ¡Gracias por salvarme!  |"
		Escribir "    +--------------------------+"
		Escribir "      /"
		Escribir "     / "
		Escribir "   O   "
		Escribir "  /|\  "
		Escribir "  / \  "
		Escribir "+============"
	SiNo
			Escribir "|--------------------||--------------------|"
			Escribir "              ... ¿de verdad?"
			Escribir "|--------------------||--------------------|"
			Esperar 1 Segundos
			Limpiar Pantalla
			CargarMuneco(-1)
			Escribir "|--------------------||--------------------||--------------------|"
			Escribir "  Acabaste con ", victima,"... le has fallado..."
			Escribir "|--------------------||--------------------||--------------------"
	FinSi
FinAlgoritmo
