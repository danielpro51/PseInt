Algoritmo edusu_11
	Definir respuesta Como Caracter
	Escribir "�Tienes t�tulo de bachiller? Responder con: s�/no"
	Leer respuesta
	Si Minusculas(respuesta) = "s�" Entonces
		Escribir "Tienes acceso a un grado superior"
	SiNo
		Escribir "�Pasaste la prueba de acceso? Responder con: s�/no"
		Leer respuesta
		Si Minusculas(respuesta) = "s�" Entonces
			Escribir "Tienes acceso a un grado superior"
		SiNo
			Escribir "No tienes acceso a un grado superior"
		FinSi
	FinSi
FinAlgoritmo
