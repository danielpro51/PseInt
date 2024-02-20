Algoritmo Reto16
	Intentos <- 3
	Escribir "Tienes ", Intentos ," oportunidades para adivinar la contraseña"
	Leer Cntrs
	Contraseña <- "Pseint"
	Acierto <- Falso
	Mientras Intentos >= 1 y Acierto = Falso Hacer
		Si Cntrs = Contraseña Entonces
			Acierto <- Verdadero
			Escribir "¡Ganaste en tan solo ", Intentos, " intentos!"
		SiNo
			Intentos <- Intentos -1
			Escribir "Tienes ", Intentos, " intentos"
			Leer Cntrs
		FinSi
	Fin Mientras
	Si Intentos <= 0 y Acierto = Falso Entonces
		Escribir "Perdiste"
	FinSi
FinAlgoritmo
