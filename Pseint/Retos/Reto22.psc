Algoritmo Reto22
	Leer ano
	Si (a�o % 4 = 0 y a�o % 100 <> 0) Entonces
		Escribir "Es bisiesto"
	SiNo
		Si (a�o % 100 = 0 y a�o % 400 = 0) Entonces
			Escribir "Es bisiesto"
		SiNo
			Escribir "No es bisiesto"
		FinSi
	FinSi
FinAlgoritmo
