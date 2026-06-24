Algoritmo ContarDigitos

    Definir N, contador Como Entero

    Escribir "Ingrese un número positivo:"
    Leer N

    contador <- 0

    Mientras N > 0 Hacer

        contador <- contador + 1
        N <- Trunc(N / 10)

    FinMientras

    Escribir "El número tiene ", contador, " dígitos."

FinAlgoritmo