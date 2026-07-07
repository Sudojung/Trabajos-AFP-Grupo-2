# Ejercicio 18:

Matrices dinámicas con apuntadores: Crear y manipular matrices dinámicas usando doble puntero.

# Algoritmo:

INICIO

```
Definir n, m, i, j Como Entero
Definir matriz Como Puntero a Puntero a Entero

Escribir "Ingrese número de filas (n):"
Leer n
Escribir "Ingrese número de columnas (m):"
Leer m

matriz <- new Puntero a Entero[n]
Para i <- 0 Hasta n - 1 Hacer
    matriz[i] <- new Entero[m]
Fin Para

Escribir "Ingrese los elementos de la matriz:"
Para i <- 0 Hasta n - 1 Hacer
    Para j <- 0 Hasta m - 1 Hacer
        Leer matriz[i][j]
    Fin Para
Fin Para

Escribir "Matriz ingresada:"
Para i <- 0 Hasta n - 1 Hacer
    Para j <- 0 Hasta m - 1 Hacer
        Escribir Sin Saltar matriz[i][j], " "
    Fin Para
    Escribir ""
Fin Para

Para i <- 0 Hasta n - 1 Hacer
    delete[] matriz[i]
Fin Para
delete[] matriz
```

FIN

# Prueba de Escritorio:

Datos de entrada:

- n = 2, m = 2
- matriz = [[1, 2], [3, 4]]

| Paso | Acción | Resultado |
|---|---|---|
| 1 | matriz <- new Puntero a Entero[2] | arreglo de 2 punteros creado |
| 2 | matriz[0] <- new Entero[2] | fila 0 reservada |
| 2 | matriz[1] <- new Entero[2] | fila 1 reservada |
| 3 | Leer matriz[0][0], matriz[0][1] | 1, 2 |
| 3 | Leer matriz[1][0], matriz[1][1] | 3, 4 |
| 4 | delete[] matriz[0], delete[] matriz[1], delete[] matriz | memoria liberada |

**Salida:**
```
1 2
3 4
```
