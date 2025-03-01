Algoritmo CC100_18
	Definir texto Como Caracter
    Para i <- 1 Hasta 100 Hacer
        texto <- ""
        Si i % 2 = 0 Entonces
            texto <- texto + "Bizz"
        FinSi
        Si i % 3 = 0 Entonces
            texto <- texto + "Buzz"
        FinSi
        Si texto = "" Entonces
            texto <- ConvertirATexto(i)
        FinSi
        Escribir texto
    FinPara
FinAlgoritmo
