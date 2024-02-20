Algoritmo Reto10
	Escribir "Dime un número"
	Leer n1
	Mientras n1 <= 0 Hacer
		Escribir "Di un número menor y distinto de 0"
		Leer n1
	Fin Mientras
	Si n1 % 2 = 0 Entonces
		Escribir n1, " es un número entero"
	SiNo
		Escribir "No es número entero"
	FinSi
FinAlgoritmo
