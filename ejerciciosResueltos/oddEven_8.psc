Algoritmo oddEven_8
	Definir n1 Como Entero
	Escribir "|--------------------||--------------------|"
	Escribir "Dime un n�mero entero"
	Leer n1
	Si n1 = 0 Entonces // La diferencia se hace con ! m�s = ; o usando < y > juntos
		Escribir "|--------------------||--------------------|"
		Escribir "No es par ni impar"
	SiNo
		Si n1 % 2 = 0 Entonces
			Escribir "|--------------------||--------------------|"
			Escribir "Es par"
		SiNo
			Escribir "|--------------------||--------------------|"
			Escribir "Es impar"
		FinSi
	FinSi
	Escribir "|--------------------||--------------------|"
FinAlgoritmo
