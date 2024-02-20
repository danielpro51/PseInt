Algoritmo Reto23
	segundos <- 0
	minutos <- 0
	horas <- 0
	Mientras Verdadero Hacer
		Si horas < 10 Entonces
			Escribir Sin Saltar "0"
		FinSi
		Escribir Sin Saltar horas,":"
		Si minutos < 10 Entonces
			Escribir Sin Saltar "0"
		FinSi
		Escribir Sin Saltar minutos,":"
		Escribir segundos
		segundos <- segundos + 1
		Si segundos = 60 Entonces
			minutos <- minutos + 1
			segundos <- 0
		FinSi
		Si minutos = 60 Entonces
			horas <- horas + 1
			minutos <- 0
			Si horas = 24 Entonces
				horas <- 0
			FinSi
		FinSi
		Esperar 1 segundo
	FinMientras
FinAlgoritmo
