Algoritmo CantidadDigitos

    Definir N, cantidad Como Entero

    // Validación de entrada
    Repetir
        Escribir "Ingrese un número entero positivo:"
        Leer N

        Si N <= 0 Entonces
            Escribir "Error: Debe ingresar un número positivo."
        FinSi

    Hasta Que N > 0

    cantidad <- 0

    // Contamos la cantidad de dígitos
    Mientras N > 0 Hacer

        cantidad <- cantidad + 1
        N <- Trunc(N / 10)

    FinMientras

    Escribir "El número tiene ", cantidad, " dígito(s)."

FinAlgoritmo
