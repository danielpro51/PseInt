Algoritmo perKidGir_7
	Definir ninos, ninas, total, perNinos, perNinas Como Real
	Escribir "|--------------------||--------------------|"
	Escribir "Dime la cantidad de ni�os " Sin Saltar
	Leer ninos
	Escribir "|--------------------||--------------------|"
	Escribir "Dime la cantidad de ni�as " Sin Saltar
	Leer ninas
	total <- ninos + ninas
	perNinos <- (ninos * 100)/total
	perNinas <- (ninas * 100)/total
	//Escribir "El total de ni�os es ", total, " el porcentaje de ni�os son ", perNinos, "% el porcentaje de ni�as son ", perNinas,"%"
	// El c�digo est� bien, pero estamos trabajando la relaci�n n/(n1+n2); en donde el denominador crece m�s que el numerador
	// En ese orden, en PSEINT existe REDON(n) la cual nos redondea el n�mero ingresado
	Limpiar Pantalla
	Escribir "|--------------------||--------------------|"
	Escribir "El total de estudiantes es ", total
	Escribir "El porcentaje de ni�os es ", REDON(perNinos), "%"
	Escribir "El porcentaje de ni�as es ", REDON(perNinas), "%"
	Escribir "|--------------------||--------------------|"
FinAlgoritmo
