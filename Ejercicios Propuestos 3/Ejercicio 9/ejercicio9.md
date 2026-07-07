# Ejercicio 9:

Multiplicación de matrices: Multiplicar dos matrices cuadradas.

# Algoritmo:

INICIO

```
Definir n, i, j, k Como Entero
Definir a, b, c Como Entero

Escribir "Ingrese el tamaño n de las matrices cuadradas:"
Leer n

Dimension a[n,n]
Dimension b[n,n]
Dimension c[n,n]

Escribir "Ingrese los elementos de la matriz A:"
Para i <- 0 Hasta n - 1 Hacer
    Para j <- 0 Hasta n - 1 Hacer
        Leer a[i,j]
    Fin Para
Fin Para

Escribir "Ingrese los elementos de la matriz B:"
Para i <- 0 Hasta n - 1 Hacer
    Para j <- 0 Hasta n - 1 Hacer
        Leer b[i,j]
    Fin Para
Fin Para

Para i <- 0 Hasta n - 1 Hacer
    Para j <- 0 Hasta n - 1 Hacer
        c[i,j] <- 0
        Para k <- 0 Hasta n - 1 Hacer
            c[i,j] <- c[i,j] + a[i,k] * b[k,j]
        Fin Para
    Fin Para
Fin Para

Escribir "Matriz resultante C = A x B:"
Para i <- 0 Hasta n - 1 Hacer
    Para j <- 0 Hasta n - 1 Hacer
        Escribir Sin Saltar c[i,j], " "
    Fin Para
    Escribir ""
Fin Para
```

FIN

# Prueba de Escritorio:

Datos de entrada:

- n = 2
- A = [[1, 2], [3, 4]]
- B = [[5, 6], [7, 8]]

| i | j | Cálculo c[i,j] | Resultado |
|---|---|---|---|
| 0 | 0 | (1*5)+(2*7) | 19 |
| 0 | 1 | (1*6)+(2*8) | 22 |
| 1 | 0 | (3*5)+(4*7) | 43 |
| 1 | 1 | (3*6)+(4*8) | 50 |

**Salida:**
```
19 22
43 50
```
