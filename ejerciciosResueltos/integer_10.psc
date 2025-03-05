Algoritmo integer_10
	Definir n1 Como Real
	Escribir "|--------------------||--------------------|"
	Escribir "Dime un número: " Sin Saltar
	Leer n1
	// La función TRUNC hace que se elimine la parte decimal sin redondeo
	// Transforma el número a entero
	Escribir "|--------------------||--------------------|"
	Si n1 = TRUNC(n1) Entonces
		Escribir n1," es entero"
		Escribir "|--------------------||--------------------|"
	SiNo
		Escribir n1," no es entero", TRUNC(n1)
		Escribir "|--------------------||--------------------|"
	FinSi
FinAlgoritmo