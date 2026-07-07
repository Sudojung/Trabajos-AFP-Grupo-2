# Ejercicio 9:

Escriba un programa que muestre la serie de Fibonacci para los valores comprendidos entre n y m.

# Algoritmo:

INICIO

    Definir n, m Como Entero
    Definir a, b, siguiente Como Entero

    Escribir "Ingrese el límite inferior (n):"
    Leer n

    Escribir "Ingrese el límite superior (m):"
    Leer m

    a <- 0
    b <- 1

    Escribir "Serie de Fibonacci entre ", n, " y ", m, ":"

    Mientras a <= m Hacer

        Si a >= n Entonces
            Escribir a
        FinSi

        siguiente <- a + b
        a <- b
        b <- siguiente

    FinMientras

FIN

# Prueba de Escritorio:

Datos de entrada:
- n = 4
- m = 25

| Valor actual de a | ¿Está en el rango (4 - 25)? | Salida en Pantalla | Nuevo valor de a | Cálculo del siguiente (a + b) | Nuevo valor de b |
|-------------------|-----------------------------|--------------------|------------------|-------------------------------|------------------|
| 0 | No | No imprime | 1 | 0 + 1 = 1 | 1 |
| 1 | No | No imprime | 1 | 1 + 1 = 2 | 2 |
| 1 | No | No imprime | 2 | 1 + 2 = 3 | 3 |
| 2 | No | No imprime | 3 | 2 + 3 = 5 | 5 |
| 3 | No | No imprime | 5 | 3 + 5 = 8 | 8 |
| 5 | Sí | 5 | 8 | 5 + 8 = 13 | 13 |
| 8 | Sí | 8 | 13 | 8 + 13 = 21 | 21 |
| 13 | Sí | 13 | 21 | 13 + 21 = 34 | 34 |
| 21 | Sí | 21 | 34 | 21 + 34 = 55 | 55 |
| 34 | No | No imprime | 55 | 34 + 55 = 89 | 89 |

## Resultado final

Serie de Fibonacci comprendida entre **4** y **25**:

- 5
- 8
- 13
- 21
