# Ejercicio 6:

Escriba un programa que calcule de forma aproximada el seno de un ángulo comprendido entre -3.1416 y 3.1416 utilizando la Serie de Taylor. El valor del ángulo se leerá desde la entrada estándar y se comprobará que se encuentre dentro del rango permitido.

# Algoritmo:

INICIO

    Definir angulo, senoAcumulado, termino, signo, factorial Como Real
    Definir i, exponente Como Entero

    Escribir "Ingrese el ángulo en radianes (entre -3.1416 y 3.1416):"
    Leer angulo

    Si angulo < -3.1416 O angulo > 3.1416 Entonces

        Escribir "Error: Ángulo fuera del rango permitido."

    SiNo

        senoAcumulado <- angulo
        termino <- angulo
        signo <- 1
        factorial <- 1

        Para i <- 1 Hasta 4 Hacer

            signo <- signo * (-1)

            exponente <- (2 * i) + 1

            factorial <- factorial * (2 * i) * (2 * i + 1)

            termino <- (angulo ^ exponente) / factorial

            senoAcumulado <- senoAcumulado + (signo * termino)

        FinPara

        Escribir "Seno aproximado de (", angulo, ") = ", senoAcumulado

    FinSi

FIN

# Prueba de Escritorio:

Datos de entrada:
- angulo = 1 radian

| i | Signo | Exponente (2i+1) | Factorial | Término | Operación | Valor de seno |
|---|--------|------------------|-----------|----------|-----------|---------------|
| Inicio | 1 | - | 1 | - | seno = 1 | 1.000000 |
| 1 | -1 | 3 | 6 (3!) | 1³ / 6 = 0.166667 | 1 - 0.166667 | 0.833333 |
| 2 | 1 | 5 | 120 (5!) | 1⁵ / 120 = 0.008333 | 0.833333 + 0.008333 | 0.841666 |
| 3 | -1 | 7 | 5040 (7!) | 1⁷ / 5040 = 0.000198 | 0.841666 - 0.000198 | 0.841468 |
| 4 | 1 | 9 | 362880 (9!) | 1⁹ / 362880 = 0.000003 | 0.841468 + 0.000003 | 0.841471 |

## Resultado final

- Ángulo ingresado: **1 radian**
- Seno aproximado: **0.841471**
