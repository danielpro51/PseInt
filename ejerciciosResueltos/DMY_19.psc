Algoritmo DMY_19
	Definir dia, mes, ano Como Enteros
	Escribir "|--------------------||--------------------|"
	Escribir "Dime un día: " Sin Saltar
	Repetir
		Leer dia
		Si (dia <= 0 o dia >= 32) Entonces
			Limpiar Pantalla
			Escribir "|--------------------||--------------------|"
			Escribir "Día inválido, intentar de nuevo."
			Escribir "|--------------------||--------------------|"
			Esperar 1 Segundos
			Limpiar Pantalla
			dia = 0 // Resetar la variable erróneamente ingresada
			Escribir "|--------------------||--------------------|"
			Escribir "Dime un día: "Sin Saltar
		FinSi
	Hasta Que (dia >= 1 y dia <= 31)
	Limpiar Pantalla
	Escribir "|--------------------||--------------------|"
	Escribir "Dime un mes: " Sin Saltar
	Repetir
		Leer mes
		Si (mes <= 0 o mes >= 13) Entonces
			Limpiar Pantalla
			Escribir "|--------------------||--------------------|"
			Escribir "Mes inválido, intentar de nuevo."
			Escribir "|--------------------||--------------------|"
			Esperar 1 Segundos
			Limpiar Pantalla
			mes = 0
			Escribir "|--------------------||--------------------|"
			Escribir "Dime un mes: "Sin Saltar
		FinSi
	Hasta Que (mes >= 1 y mes <= 12)
	Limpiar Pantalla
	Escribir "|--------------------||--------------------|"
	Escribir "Dime un año: " Sin Saltar
	Repetir
		Leer ano
		Si (ano <= 0) Entonces
			Limpiar Pantalla
			Escribir "|--------------------||--------------------|"
			Escribir "Año inválido, intentar de nuevo."
			Escribir "|--------------------||--------------------|"
			Esperar 1 Segundos
			Limpiar Pantalla
			ano = 0
			Escribir "|--------------------||--------------------|"
			Escribir "Dime un año: "Sin Saltar
		FinSi
	Hasta Que (ano >= 1)
	Limpiar Pantalla
	Escribir "|--------------------||--------------------|"
	Si (dia <= 31 y mes <= 12 y ano >= 0) Entonces
		Escribir dia Sin Saltar
		Segun mes Hacer
			1:
				Escribir " de enero del " Sin Saltar
			2:
				Escribir " de febrero del " Sin Saltar
			3:
				Escribir " de marzo del " Sin Saltar
			4:
				Escribir " de abril del " Sin Saltar
			5:
				Escribir " de mayo del " Sin Saltar
			6:
				Escribir " de junio del " Sin Saltar
			7:
				Escribir " de julio del " Sin Saltar
			8:
				Escribir " de agosto del " Sin Saltar
			9:
				Escribir " de septiembre del " Sin Saltar
			10:
				Escribir " de octubre del " Sin Saltar
			11:
				Escribir " de noviembre del " Sin Saltar
			12:
				Escribir " de diciembre del " Sin Saltar
		FinSegun
		Escribir ano
	FinSi
	Escribir "|--------------------||--------------------|"
FinAlgoritmo
