Algoritmo anoBisiesto_20
	Definir ano Como Entero
	Escribir "|--------------------|"
	Escribir "Dime un año: " Sin Saltar
	Leer ano
	Escribir "|--------------------|"
	Si ano % 4 = 0 y ano % 100 <> 0 Entonces
		Escribir ano," es bisiesto"
	SiNo
		Si ano % 100 = 0 y ano % 400 = 0 Entonces
			Escribir ano," es bisiesto"
		SiNo
			Escribir ano," no es bisiesto"
		FinSi
	FinSi
FinAlgoritmo
