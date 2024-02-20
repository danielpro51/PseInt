Algoritmo Reto22
	Leer ano
	Si (año % 4 = 0 y año % 100 <> 0) Entonces
		Escribir "Es bisiesto"
	SiNo
		Si (año % 100 = 0 y año % 400 = 0) Entonces
			Escribir "Es bisiesto"
		SiNo
			Escribir "No es bisiesto"
		FinSi
	FinSi
FinAlgoritmo
