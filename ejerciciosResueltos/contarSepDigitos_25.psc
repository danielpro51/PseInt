Algoritmo contarSepDigitos_25
	Definir n1, contadorDigitos Como Entero
	Definir conocerDigitos Como Caracter
	Escribir "Dime un número entero"
	Leer n1
	aux <- n1
	Mientras aux > 0 Hacer
		contadorDigitos <- contadorDigitos + 1
		aux <- TRUNC(aux/10)
	FinMientras
	Escribir n1, " tiene ", contadorDigitos," dígitos"
	conocerDigitos <- ConvertirATexto(n1)
	Para i <- 1 Hasta Longitud(conocerDigitos) Hacer
		Escribir "El dígito ",i," es ", SubCadena(conocerDigitos, i,i)
	FinPara
FinAlgoritmo
