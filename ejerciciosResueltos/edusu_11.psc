Algoritmo edusu_11
	Definir respuesta Como Caracter
	Escribir "¿Tienes título de bachiller? Responder con: sí/no"
	Leer respuesta
	Si Minusculas(respuesta) = "sí" Entonces
		Escribir "Tienes acceso a un grado superior"
	SiNo
		Escribir "¿Pasaste la prueba de acceso? Responder con: sí/no"
		Leer respuesta
		Si Minusculas(respuesta) = "sí" Entonces
			Escribir "Tienes acceso a un grado superior"
		SiNo
			Escribir "No tienes acceso a un grado superior"
		FinSi
	FinSi
FinAlgoritmo
