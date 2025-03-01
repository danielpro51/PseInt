Algoritmo reloj_21
	seg <- 0
	minutos <- 0
	horas <- 0
	Mientras Verdadero Hacer
		//Estilizador; opcional, pero mejora el acabado
		Si horas < 10 Entonces
			Escribir "0" Sin Saltar
		FinSi
		Escribir horas Sin Saltar
		Escribir ":" Sin Saltar
		
		Si minutos < 10 Entonces
			Escribir "0" Sin Saltar
		FinSi
		Escribir minutos Sin Saltar
		Escribir ":" Sin Saltar
		
		Si seg < 10 Entonces
			Escribir "0" Sin Saltar
		FinSi
		Escribir seg
		//Actualizador de tiempo
		seg <- seg + 1
		Si seg = 60 Entonces
			minutos <- minutos + 1
			seg <- 0
		FinSi
		Si minutos = 60 Entonces
			horas <- horas + 1
			minutos <- 0
			Si horas = 24 Entonces
				seg <- 0
				minutos <- 0
				horas <- 0
			FinSi
		FinSi
		//Escribir horas,":",minutos,":",seg
		Esperar 1 Segundos
	FinMientras
FinAlgoritmo
