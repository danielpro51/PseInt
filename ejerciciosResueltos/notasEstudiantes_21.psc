Algoritmo notasEstudiantes_21
	Definir nombre Como Caracter
	Definir n1, n2, n3, total Como Real
	Escribir "Dime el nombre del alumno; se finaliza el programa dejando el nombre en blanco"
	Leer nombre
	Mientras nombre <> "" Hacer
		Escribir "Dime la nota práctica 10%"
		Leer n1
		Escribir "Dime la nota problema 50%"
		Leer n2
		Escribir "Dime la nota teórica 40%"
		Leer n3
		Si (n1 >= 1.0 y n1 <= 5.0) y (n2 >= 1.0 y n2 <= 5.0) y (n3 >= 1.0 y n3 <= 5.0) Entonces
			total <- (n1*0.10) + (n2*0.50) + (n3*0.40)
			Escribir "La nota de ", nombre," es de ", total
			Escribir "------------------------------"
			Escribir "Dime el nombre de otro estudiante; se finaliza el programa dejando el nombre en blanco"
			Leer nombre
		SiNo
			Escribir "Las notas deben estar entre 1.0 y 5.0"
			Escribir "------------------------------"
			Escribir "Dime el nombre de otro estudiante; se finaliza el programa dejando el nombre en blanco"
			Leer nombre
		FinSi
	FinMientras
FinAlgoritmo
