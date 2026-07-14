# Ejercicio 17:

Hacer un algoritmo y un programa en c++ para evaluar una una funcion de la siguiente forma: 
aX^4-bX^3+2*cX^2-X+d donde a,b,c,d son ingresado por teclado y el valor para x enteros [8,100] 
muestre todos los f(x)=


# Algoritmo:

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


# Prueba de Escritorio:

| a | b | c | d | x | Cálculo de f(x) | Resultado |
|---:|---:|---:|---:|---:|---|---:|
| 1 | 2 | 3 | 4 | 8 | (1(8^4) - 2(8^3) + 2(3)(8^2) - 8 + 4) | 3452 |
| 1 | 2 | 3 | 4 | 9 | (1(9^4) - 2(9^3) + 2(3)(9^2) - 9 + 4) | 5584 |
| 1 | 2 | 3 | 4 | 10 | (1(10^4) - 2(10^3) + 2(3)(10^2) - 10 + 4) | 8594 |
