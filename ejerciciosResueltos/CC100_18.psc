Algoritmo CC100_18
	Definir text Como Caracter
	Escribir "|--------------------||--------------------|"
	Escribir "A continuaci�n se mostrar�n los n�meros del 1 al 100: "
	Escribir "Los divisibles entre 2 se llamar�n bizz; los divisibles entre 3 se llamar�n buzz; los divisibles entre 2 y 3 bizzbuzz; los no divisibles entre 2 y 3 no tendr�n nombre." Sin Saltar
	Escribir ""
	Escribir "|--------------------||--------------------|"
	Esperar 1 Segundos
    Para i <- 1 Hasta 100 Hacer
        text <- ""
        Si i % 2 = 0 Entonces
            text <- text + "Bizz"
        FinSi
        Si i % 3 = 0 Entonces
            text <- text + "Buzz"
        FinSi
        Si text = "" Entonces
            text <- ConvertirATexto(i)
        FinSi
        Escribir text," "
    FinPara
	Escribir "|--------------------||--------------------|"
FinAlgoritmo
