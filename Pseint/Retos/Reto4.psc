Algoritmo Reto4
	Escribir "Dime 3 números a comparar"
	Leer A
	Leer B
	Leer C
	Si (A >= B y A >= C) Entonces
		Escribir A, " es el número mayor"
	SiNo
		Si B >= C y B >= A Entonces
			Escribir B, " es el número mayor"
		SiNo
			Escribir C, " es el número mayor"
		FinSi
	FinSi
FinAlgoritmo
