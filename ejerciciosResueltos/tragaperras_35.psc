Algoritmo tragaperras_35
	Definir saldo, apuesta Como Entero
	Definir simbolos Como Caracter
	saldo = 100
	simbolos = "xo$"
	Escribir "               .-------."
	Escribir "            oO{-JACKPOT-}Oo"
	Escribir "            .=============. __"
	Escribir "            | [a] [X] [o] |(  )"
	Escribir "            | [$] [$] [$] | ||"
	Escribir "            | [X] [o] [$] | ||"
	Escribir "            |             |_||"
	Escribir "            | xxx ::::::: |--|"
	Escribir "            | ooo ::::::: |"
	Escribir "            | $$$ ::::::: |"
	Escribir "            |             |"
	Escribir "            |      __ === |"
	Escribir "            |_____/__\____|"
	Escribir "           /###############\"
	Escribir "          /#################\"
	Escribir "         |###################|"
	Escribir "|--------------------||--------------------|"
	Escribir "            ¿Cuánto vas a poner?"
	Escribir "|--------------------||--------------------|"
	Escribir "|--------------------||--------------------||--------------------|"
	Escribir " Tienes ", saldo," de saldo disponible"
	Escribir "|--------------------||--------------------||--------------------|"
	Leer apuesta
	Escribir "|--------------------||--------------------|"
	Escribir "          ¿Cuántos giros quieres?"
	Escribir "|--------------------||--------------------|"
	Leer tiempo
	GirarMaquina(simbolos, saldo, apuesta, tiempo)
FinAlgoritmo
Funcion GirarMaquina(simbolos, saldo, apuesta, tiempo)
	Dimension ruedas[3]
	Dimension aleatori[6]
	Si saldo > 0 Entonces
		Repetir
			tiempo <- tiempo - 1
			Para i <- 1 Hasta 3 Hacer
				ali = Aleatorio(1,Longitud(simbolos))
				ruedas[i] = Subcadena(simbolos, Aleatorio(ali, ali), Aleatorio(ali, ali))
			FinPara
			Para i <- 1 Hasta 6 Hacer
				al = Aleatorio(1,Longitud(simbolos))
				aleatori[i] = Subcadena(simbolos, Aleatorio(al, al), Aleatorio(al, al))
			FinPara
			
			Limpiar Pantalla
			Escribir "               .-------."
			Escribir "            oO{-JACKPOT-}Oo"
			Escribir "            .=============. __"
			Escribir "            | [",aleatori[1],"][",aleatori[2],"] [",aleatori[3],"] |(  )"
			Escribir "            | [",ruedas[1],"] [",ruedas[2],"] [",ruedas[3],"] | ||"
			Escribir "            | [",aleatori[4],"] [",aleatori[6],"] [",aleatori[5],"] | ||"
			Escribir "            |             |_||"
			Escribir "            | xxx ::::::: |--|"
			Escribir "            | ooo ::::::: |"
			Escribir "            | $$$ ::::::: |"
			Escribir "            |             |"
			Escribir "            |      __ === |"
			Escribir "            |_____/__\____|"
			Escribir "           /###############\"
			Escribir "          /#################\"
			Escribir "         |###################|"
			Esperar 1 Segundos
		Hasta Que tiempo = 0
		
		Si (ruedas[1] == ruedas[2]) y (ruedas[1] == ruedas[3]) y (ruedas[2] == ruedas[3]) Entonces
			Escribir "|--------------------||--------------------|"
			Escribir "                 ¡Ganaste!"
			Escribir "|--------------------||--------------------|"
			saldo <- saldo * 10
			Esperar 2 Segundos
			Limpiar Pantalla
			Escribir "|--------------------||--------------------|"
			Escribir "            Tu saldo es ", saldo
			Escribir "|--------------------||--------------------|"
			Esperar 2 Segundos
			Limpiar Pantalla
			Escribir "|--------------------||--------------------|"
			Escribir "              ¿Volver a jugar? Sí/no"
			Escribir "|--------------------||--------------------|"
			Leer respuesta
			Limpiar Pantalla
			Si Minusculas(respuesta) == "sí" Entonces
				Escribir "               .-------."
				Escribir "            oO{-JACKPOT-}Oo"
				Escribir "            .=============. __"
				Escribir "            | [a] [X] [o] |(  )"
				Escribir "            | [$] [$] [$] | ||"
				Escribir "            | [X] [o] [$] | ||"
				Escribir "            |             |_||"
				Escribir "            | xxx ::::::: |--|"
				Escribir "            | ooo ::::::: |"
				Escribir "            | $$$ ::::::: |"
				Escribir "            |             |"
				Escribir "            |      __ === |"
				Escribir "            |_____/__\____|"
				Escribir "           /###############\"
				Escribir "          /#################\"
				Escribir "         |###################|"
				Escribir "|--------------------||--------------------|"
				Escribir "            ¿Cuánto vas a poner?"
				Escribir "|--------------------||--------------------|"
				Escribir "|--------------------||--------------------||--------------------|"
				Escribir " Tienes ", saldo," de saldo disponible."
				Escribir "|--------------------||--------------------||--------------------|"
				Leer apuesta
				Escribir "|--------------------||--------------------|"
				Escribir "          ¿Cuántos giros quieres?"
				Escribir "|--------------------||--------------------|"
				Leer tiempo
				GirarMaquina(simbolos, saldo, apuesta, tiempo)
			SiNo
				Limpiar Pantalla
				Escribir "|--------------------||--------------------|"
				Escribir "            Te quedas con ", saldo
				Escribir "|--------------------||--------------------|"
				Esperar 2 Segundos
				Limpiar Pantalla
				Escribir "|--------------------||--------------------|"
				Escribir "        Esperamos volverte a ver."
				Escribir "|--------------------||--------------------|"
			FinSi
		SiNo
			saldo <- saldo - apuesta
			Si saldo > 0 Entonces
				Escribir "|--------------------||--------------------|"
				Escribir "                  Perdiste."
				Escribir "|--------------------||--------------------|"
				Esperar 1 Segundos
				Limpiar Pantalla
				Escribir "|--------------------||--------------------|"
				Escribir "            Tu saldo es ", saldo
				Escribir "|--------------------||--------------------|"
				Esperar 2 Segundos
				Limpiar Pantalla
				Escribir "|--------------------||--------------------|"
				Escribir "   Juega de nuevo, recupera tu inversión"
				Escribir "          ¿Vas a recuperarte? Sí/No"
				Escribir "|--------------------||--------------------|"
				Leer respuesta
				Limpiar Pantalla
				Si Minusculas(respuesta) == "sí" Entonces
					Escribir "               .-------."
					Escribir "            oO{-JACKPOT-}Oo"
					Escribir "            .=============. __"
					Escribir "            | [a] [X] [o] |(  )"
					Escribir "            | [$] [$] [$] | ||"
					Escribir "            | [X] [o] [$] | ||"
					Escribir "            |             |_||"
					Escribir "            | xxx ::::::: |--|"
					Escribir "            | ooo ::::::: |"
					Escribir "            | $$$ ::::::: |"
					Escribir "            |             |"
					Escribir "            |      __ === |"
					Escribir "            |_____/__\____|"
					Escribir "           /###############\"
					Escribir "          /#################\"
					Escribir "         |###################|"
					Escribir "|--------------------||--------------------|"
					Escribir "            ¿Cuánto vas a poner?"
					Escribir "|--------------------||--------------------|"
					Escribir "|--------------------||--------------------||--------------------|"
					Escribir " Tienes ", saldo," de saldo disponible."
					Escribir "|--------------------||--------------------||--------------------|"
					Leer apuesta
					Escribir "|--------------------||--------------------|"
					Escribir "          ¿Cuántos giros quieres?"
					Escribir "|--------------------||--------------------|"
					Leer tiempo
					GirarMaquina(simbolos, saldo, apuesta, tiempo)
				SiNo
					Limpiar Pantalla
					Escribir "|--------------------||--------------------|"
					Escribir "            Te quedas con ", saldo
					Escribir "|--------------------||--------------------|"
					Esperar 2 Segundos
					Limpiar Pantalla
					Escribir "|--------------------||--------------------|"
					Escribir "        Esperamos volverte a ver."
					Escribir "|--------------------||--------------------|"
				FinSi
			SiNo
				Escribir "|--------------------||--------------------|"
				Escribir "           Te quedaste sin saldo."
				Escribir "|--------------------||--------------------|"
				Esperar 2 Segundos
				Limpiar Pantalla
				Escribir "|--------------------||--------------------|"
				Escribir "           Piensa mejor la próxima..."
				Escribir "|--------------------||--------------------|"
			FinSi
		FinSi
	FinSi
	
FinFuncion
	