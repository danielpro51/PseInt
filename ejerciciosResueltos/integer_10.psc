Algoritmo integer_10
	Escribir "Dime un n�mero"
	Leer n1
	// La funci�n TRUNC hace que se elimine la parte decimal sin redondeo
	// Transforma el n�mero a entero
	Si n1 = TRUNC(n1) Entonces
		Escribir "Es entero"
	SiNo
		Escribir "No es entero", TRUNC(n1)
	FinSi
FinAlgoritmo