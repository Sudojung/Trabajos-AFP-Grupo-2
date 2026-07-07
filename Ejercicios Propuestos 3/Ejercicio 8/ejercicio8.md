# Ejercicio 8:

Transposición de matriz: Calcular la matriz transpuesta de una matriz n x m.

# Algoritmo:

INICIO

```
Definir n, m, i, j Como Entero
Definir matriz, transpuesta Como Entero

Escribir "Ingrese número de filas (n):"
Leer n
Escribir "Ingrese número de columnas (m):"
Leer m

Dimension matriz[n,m]
Dimension transpuesta[m,n]

Escribir "Ingrese los elementos de la matriz:"
Para i <- 0 Hasta n - 1 Hacer
    Para j <- 0 Hasta m - 1 Hacer
        Leer matriz[i,j]
    Fin Para
Fin Para

Para i <- 0 Hasta n - 1 Hacer
    Para j <- 0 Hasta m - 1 Hacer
        transpuesta[j,i] <- matriz[i,j]
    Fin Para
Fin Para

Escribir "Matriz transpuesta:"
Para i <- 0 Hasta m - 1 Hacer
    Para j <- 0 Hasta n - 1 Hacer
        Escribir Sin Saltar transpuesta[i,j], " "
    Fin Para
    Escribir ""
Fin Para
```

FIN

# Prueba de Escritorio:

Datos de entrada:

- n = 2, m = 3
- matriz = [[1, 2, 3], [4, 5, 6]]

| i | j | transpuesta[j,i] <- matriz[i,j] |
|---|---|---|
| 0 | 0 | transpuesta[0,0] = 1 |
| 0 | 1 | transpuesta[1,0] = 2 |
| 0 | 2 | transpuesta[2,0] = 3 |
| 1 | 0 | transpuesta[0,1] = 4 |
| 1 | 1 | transpuesta[1,1] = 5 |
| 1 | 2 | transpuesta[2,1] = 6 |

**Salida:**
```
1 4
2 5
3 6
```
