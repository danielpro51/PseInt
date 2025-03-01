Algoritmo integer_10
	Escribir "Dime un número"
	Leer n1
	// La función TRUNC hace que se elimine la parte decimal sin redondeo
	// Transforma el número a entero
	Si n1 = TRUNC(n1) Entonces
		Escribir "Es entero"
	SiNo
		Escribir "No es entero", TRUNC(n1)
	FinSi
FinAlgoritmo