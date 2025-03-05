Algoritmo media_15
	Definir n, sum, contador Como Entero
	Definir media Como Real
	Escribir "|--------------------||--------------------|"
	Escribir "Ingrese números a sacar media. Termine el programa ingresando -1"
	Leer n
	Mientras n <> -1 Hacer
		sum <- sum + n
		contador <- contador + 1
		Leer n
	FinMientras
	Limpiar Pantalla
	media = sum/contador
	Escribir "|--------------------||--------------------|"
	Escribir "La suma es ", sum
	Escribir "La media es ", media
	Escribir "|--------------------||--------------------|"
FinAlgoritmo