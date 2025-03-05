Algoritmo edusu_11
	Definir respuesta Como Caracter
	Escribir "|--------------------||--------------------|"
	Escribir "¿Tienes título de bachiller? Responder con: sí/no"
	Leer respuesta
	Limpiar Pantalla
	Si Minusculas(respuesta) = "sí" Entonces
		Escribir "|--------------------||--------------------|"
		Escribir "Tienes acceso a un grado superior"
	SiNo
		Escribir "|--------------------||--------------------|"
		Escribir "¿Pasaste la prueba de acceso? Responder con: sí/no"
		Leer respuesta
		Limpiar Pantalla
		Si Minusculas(respuesta) = "sí" Entonces
			Escribir "|--------------------||--------------------|"
			Escribir "Tienes acceso a un grado superior"
		SiNo
			Escribir "|--------------------||--------------------|"
			Escribir "No tienes acceso a un grado superior"
		FinSi
	FinSi
	Escribir "|--------------------||--------------------|"
FinAlgoritmo
