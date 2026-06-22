Algoritmo TablasDeMultiplicar
    Definir num1, num2, i, resultado1, resultado2 Como Entero

    Escribir "Ingresa el primer número para su tabla:"
    Leer num1

    Escribir "Ingresa el segundo número para su tabla:"
    Leer num2

    Escribir "TABLA DEL ", num1, " (Del 1 al 10)"
    Para i <- 1 Hasta 10 Hacer
        resultado1 <- num1 * i
        Escribir num1, " x ", i, " = ", resultado1
    FinPara

    Escribir ""

    Escribir "TABLA DEL ", num2, " (Del 1 al 10)"
    Para i <- 1 Hasta 10 Hacer
        resultado2 <- num2 * i
        Escribir num2, " x ", i, " = ", resultado2
    FinPara

FinAlgoritmo