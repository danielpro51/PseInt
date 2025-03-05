Algoritmo mayor3Igual
	Definir A, B, C Como Real
	Escribir "|--------------------||--------------------|"
	Escribir "Dime 3 números"
	Leer A, B, C
	Si (A <> B) y (A <> C) Y (B <> C) Entonces
		// El bloque de abajo se pone dentro de la igualdad con el condicional SiNo
		// Para que no se ejecute cuando A, B y C Sean iguales y evitar esa comparación
		Si (A > B) Y (A > C) Entonces
			Escribir "|--------------------||--------------------|"
			Escribir A, " es mayor que ", B " Y ", C
			// Como A es el mayor, ver cuál es el segundo mayor número
			Si (C > B) Entonces
				Escribir "|--------------------||--------------------|"
				Escribir "El menor es ", B
			SiNo
				Escribir "|--------------------||--------------------|"
				Escribir "El menor es ", C
			FinSi
		SiNo
			Si (B > A) Y (B > C) Entonces
				Escribir "|--------------------||--------------------|"
				Escribir B, " es mayor que ", A, " Y ", C
				Si (C > A) Entonces
					Escribir "|--------------------||--------------------|"
					Escribir "El menor es ", A
				SiNo
					Escribir "|--------------------||--------------------|"
					Escribir "El menor es ", C
				FinSi
			FinSi
		FinSi
		Si (C > A) Y (C > B) Entonces
			Escribir "|--------------------||--------------------|"
			Escribir C, " es mayor que ", B, " Y ", A
			Si (B > A) Entonces
				Escribir "|--------------------||--------------------|"
				Escribir "El menor es ", A
			SiNo
				Escribir "|--------------------||--------------------|"
				Escribir "El menor es ", B
			FinSi
		FinSi
	SiNo
		Escribir "|--------------------||--------------------|"
		Escribir "Son iguales"
	FinSi
	
	Escribir "|--------------------||--------------------|"
FinAlgoritmo