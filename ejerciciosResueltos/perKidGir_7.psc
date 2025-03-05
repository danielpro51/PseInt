Algoritmo perKidGir_7
	Definir ninos, ninas, total, perNinos, perNinas Como Real
	Escribir "|--------------------||--------------------|"
	Escribir "Dime la cantidad de niños " Sin Saltar
	Leer ninos
	Escribir "|--------------------||--------------------|"
	Escribir "Dime la cantidad de niñas " Sin Saltar
	Leer ninas
	total <- ninos + ninas
	perNinos <- (ninos * 100)/total
	perNinas <- (ninas * 100)/total
	//Escribir "El total de niños es ", total, " el porcentaje de niños son ", perNinos, "% el porcentaje de niñas son ", perNinas,"%"
	// El código está bien, pero estamos trabajando la relación n/(n1+n2); en donde el denominador crece más que el numerador
	// En ese orden, en PSEINT existe REDON(n) la cual nos redondea el número ingresado
	Limpiar Pantalla
	Escribir "|--------------------||--------------------|"
	Escribir "El total de estudiantes es ", total
	Escribir "El porcentaje de niños es ", REDON(perNinos), "%"
	Escribir "El porcentaje de niñas es ", REDON(perNinas), "%"
	Escribir "|--------------------||--------------------|"
FinAlgoritmo
