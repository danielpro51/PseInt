Algoritmo anoBisiesto_20
	Definir ano Como Entero
	Escribir "Dime un año"
	Leer ano
	Si ano % 4 = 0 y ano % 100 <> 0 Entonces
		Escribir "Es bisiesto"
	SiNo
		Si ano % 100 = 0 y ano % 400 = 0 Entonces
			Escribir "Es bisiesto"
		SiNo
			Escribir "No es bisiesto"
		FinSi
	FinSi
FinAlgoritmo
