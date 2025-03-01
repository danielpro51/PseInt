Algoritmo mayor3Igual
	Definir A, B, C Como Real
	Escribir "Dime 3 números"
	Leer A, B, C
	Si (A = B) y (A = C) Entonces
		Escribir "Son iguales"
	SiNo // El bloque de abajo se pone dentro de la igualdad con el condicional SiNo
		// Para que no se ejecute cuando A, B y C Sean iguales y evitar esa comparación
		Si (A > B) Y (A > C) Entonces
			Escribir A, " es mayor que ", B " Y ", C
		SiNo
			Si (B > A) Y (B > C) Entonces
				Escribir B, " es mayor que ", A, " Y ", C
			SiNo
				Escribir C, " es mayor que ", B, " Y ", A
			FinSi
		FinSi
	FinSi
FinAlgoritmo