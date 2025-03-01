Algoritmo DMY_19
	Definir dia, mes, ano Como Enteros
	Escribir "Dime un día, mes y año"
	Leer dia, mes, ano
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
	SiNo
		Escribir "Formato erróneo"
	FinSi
FinAlgoritmo
