Algoritmo EvaluarFuncion

    Definir a, b, c, d Como Real
    Definir x Como Entero
    Definir resultado Como Real

    // Ingresamos los coeficientes
    Escribir "Ingrese el valor de a:"
    Leer a

    Escribir "Ingrese el valor de b:"
    Leer b

    Escribir "Ingrese el valor de c:"
    Leer c

    Escribir "Ingrese el valor de d:"
    Leer d

    Escribir "-----------------------------------------"

    // Evaluamos la función para x desde 8 hasta 100
    Para x <- 8 Hasta 100 Hacer

        resultado <- a * x^4 - b * x^3 + 2 * c * x^2 - x + d

        Escribir "f(", x, ") = ", resultado

    FinPara

FinAlgoritmo
