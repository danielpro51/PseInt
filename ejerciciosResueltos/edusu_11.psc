Algoritmo edusu_11
	Definir respuesta Como Caracter
	Escribir "|--------------------||--------------------|"
	Escribir "�Tienes t�tulo de bachiller? Responder con: s�/no"
	Leer respuesta
	Limpiar Pantalla
	Si Minusculas(respuesta) = "s�" Entonces
		Escribir "|--------------------||--------------------|"
		Escribir "Tienes acceso a un grado superior"
	SiNo
		Escribir "|--------------------||--------------------|"
		Escribir "�Pasaste la prueba de acceso? Responder con: s�/no"
		Leer respuesta
		Limpiar Pantalla
		Si Minusculas(respuesta) = "s�" Entonces
			Escribir "|--------------------||--------------------|"
			Escribir "Tienes acceso a un grado superior"
		SiNo
			Escribir "|--------------------||--------------------|"
			Escribir "No tienes acceso a un grado superior"
		FinSi
	FinSi
	Escribir "|--------------------||--------------------|"
FinAlgoritmo
