Algoritmo mayor2Igual
	Definir A, B Como Real
	Escribir "|--------------------||--------------------|"
	Escribir "Dime dos números"
	Leer A, B
	Si A = B Entonces
		Escribir "|--------------------||--------------------|"
		Escribir "Son iguales"
	SiNo
		Si A > B Entonces
			Escribir "|--------------------||--------------------|"
			Escribir A, " es mayor a ", B
		SiNo
			Escribir "|--------------------||--------------------|"
			Escribir B, " es mayor a ", A
		FinSi
	FinSi
	Escribir "|--------------------||--------------------|"
FinAlgoritmo
