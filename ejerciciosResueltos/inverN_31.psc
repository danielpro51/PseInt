Algoritmo inverN_31
	Definir n Como Entero
	Escribir "|--------------------||--------------------|"
	Escribir "¿Qué número quieres invertir? " Sin Saltar
	Leer n
	nn <- ConvertirATexto(n)
	// Para i desde el final hasta el inicio
	Escribir "|--------------------||--------------------|"
	Escribir n," invertido quedaría: " Sin Saltar
	Para i <- Longitud(nn) Hasta 1 Con Paso -1 Hacer
		 Escribir SubCadena(nn,i,i) Sin Saltar
	 FinPara
	 Escribir ""
	Escribir "|--------------------||--------------------|"
FinAlgoritmo
