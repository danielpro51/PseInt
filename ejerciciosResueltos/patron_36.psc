Algoritmo patron_36
	Definir patron, text Como Caracter
	Definir hayPatron, cc Como Entero
	Escribir "|--------------------||--------------------|"
	Escribir "                Dime el patr�n."
	Escribir "|--------------------||--------------------|"
	Leer patron
	Escribir "|--------------------||--------------------|"
	Escribir "    Dime el texto donde aparece el patr�n."
	Escribir "|--------------------||--------------------|"
	Leer text
	//patron = "ABBA"
	//text = "BAABABBAABABABABBA"
	hayPatron <- 0
	cc <- Longitud(patron)
	Para i <- 1 Hasta Longitud(text) - cc + 1 Hacer
		//Escribir Subcadena(text,i,cc) == patron,"--", Subcadena(text,i,cc), "--",patron
		Si Subcadena(text,i,i + cc - 1) == patron Entonces
			hayPatron <- hayPatron + 1
		FinSi
	FinPara
	Escribir "|--------------------||--------------------|"
	Escribir " El patr�n ",patron," aparece ", hayPatron," veces."
	Escribir "|--------------------||--------------------|"
FinAlgoritmo
