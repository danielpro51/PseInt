Algoritmo Reto4
	Escribir "Dime 3 n�meros a comparar"
	Leer A
	Leer B
	Leer C
	Si (A >= B y A >= C) Entonces
		Escribir A, " es el n�mero mayor"
	SiNo
		Si B >= C y B >= A Entonces
			Escribir B, " es el n�mero mayor"
		SiNo
			Escribir C, " es el n�mero mayor"
		FinSi
	FinSi
FinAlgoritmo
