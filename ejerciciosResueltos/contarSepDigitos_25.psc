Algoritmo contarSepDigitos_25
	Definir n1, contadorDigitos Como Entero
	Definir conocerDigitos Como Caracter
	Escribir "|--------------------||--------------------|"
	Escribir "Dime un n�mero entero: " Sin Saltar
	Leer n1
	aux <- n1
	Limpiar Pantalla
	Mientras aux > 0 Hacer
		contadorDigitos <- contadorDigitos + 1
		aux <- TRUNC(aux/10)
	FinMientras
	Escribir "|--------------------||--------------------|"
	Escribir n1, " tiene ", contadorDigitos," d�gitos"
	Escribir "|--------------------||--------------------|"
	conocerDigitos <- ConvertirATexto(n1)
	Para i <- 1 Hasta Longitud(conocerDigitos) Hacer
		Escribir "El d�gito ",i," es ", SubCadena(conocerDigitos, i,i)
	FinPara
	Escribir "|--------------------||--------------------|"
FinAlgoritmo
