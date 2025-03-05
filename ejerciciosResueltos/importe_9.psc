Algoritmo importe_9
	Definir n1 Como Real
	Definir mes Como Caracter
	Escribir "|--------------------||--------------------|"
	Escribir "Dime un importe: " Sin Saltar
	Leer n1
	Escribir "|--------------------||--------------------|"
	Escribir "Dime el mes: " Sin Saltar
	Leer mes
	Si Minusculas(mes) = "octubre" Entonces
		t <- (n1 * 0.15)
		// Se obtiene el porcentaje y luego se le descuenta al valor total del importe
		Limpiar Pantalla
		Escribir "|--------------------||--------------------|"
		Escribir "El descuento del 85% al importe quedó en ", (n1 - t)
		// MANERA 2:
		// t <- n1 0.85
		// Así se obtiene DIRECTAMENTE el valor del descuento en sí
	SiNo
		Limpiar Pantalla
		t <- n1
		Escribir "|--------------------||--------------------|"
		Escribir t
	FinSi
	Escribir "|--------------------||--------------------|"
FinAlgoritmo
