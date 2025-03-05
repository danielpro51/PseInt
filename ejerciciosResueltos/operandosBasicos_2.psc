Algoritmo operandosBasicos
	Definir A, B, suma, resta, multiplicacion Como Entero
	Definir division Como Real //Las divisiones no todas dan enteros
	// ENTERO: 1, 2, 3, 4, etc.
	// CARACTER: abc, bca, cab, etc.
	// LOGICO: FALSO, VERDADERO
	// REAL: 1, 2, 3, 0.5, 0.25, etc.
	Escribir "|--------------------||--------------------|"
	Escribir "Dame dos números"
	Leer A, B
	Si B <> 0 Entonces
		suma <- A + B
		resta <- A - B
		multiplicacion <- A * B
		division <- A/B
		Limpiar Pantalla
		Escribir "|--------------------||--------------------|"
		Escribir "La suma es ", suma
		Escribir "La resta es ", resta
		Escribir "La multiplicación es ", multiplicacion
		Escribir "La división es ", division
	SiNo
		Limpiar Pantalla
		Escribir "|--------------------||--------------------|"
		Escribir "Poner valor distinto de cero"
	FinSi
	Escribir "|--------------------||--------------------|"
FinAlgoritmo
