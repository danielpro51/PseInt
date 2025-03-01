Algoritmo importe_9
	Definir n1 Como Real
	Definir mes Como Caracter
	Escribir "Dime un importe"
	Leer n1
	Escribir "Dime el mes"
	Leer mes
	Si Mayusculas(mes) = "OCTUBRE" Entonces
		t <- (n1 * 0.15)
		// Se obtiene el porcentaje y luego se le descuenta al valor total del importe
		Escribir n1 - t
		// MANERA 2:
		// t <- n1 0.85
		// Así se obtiene DIRECTAMENTE el valor del descuento en sí
	SiNo
		t <- n1
		Escribir t
	FinSi
FinAlgoritmo
