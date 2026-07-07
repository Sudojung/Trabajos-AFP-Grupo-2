# Ejercicio 16:

Ordenamiento rápido (QuickSort): Implementar QuickSort usando funciones recursivas.

# Algoritmo:

INICIO

```
Definir cantidad, i Como Entero
Definir vector Como Entero

Escribir "Ingrese la cantidad de elementos:"
Leer cantidad

Dimension vector[cantidad]

Escribir "Ingrese los elementos:"
Para i <- 0 Hasta cantidad - 1 Hacer
    Leer vector[i]
Fin Para

QuickSort(vector, 0, cantidad - 1)

Escribir "Vector ordenado:"
Para i <- 0 Hasta cantidad - 1 Hacer
    Escribir Sin Saltar vector[i], " "
Fin Para

SubProceso QuickSort(Por Referencia vector Como Entero, inicio Como Entero, fin Como Entero)
    Definir pivote Como Entero
    Si inicio < fin Entonces
        pivote <- Particionar(vector, inicio, fin)
        QuickSort(vector, inicio, pivote - 1)
        QuickSort(vector, pivote + 1, fin)
    FinSi
FinSubProceso

Funcion pivote <- Particionar(Por Referencia vector Como Entero, inicio Como Entero, fin Como Entero)
    Definir pivoteValor, i, j, temp Como Entero
    pivoteValor <- vector[fin]
    i <- inicio - 1
    Para j <- inicio Hasta fin - 1 Hacer
        Si vector[j] <= pivoteValor Entonces
            i <- i + 1
            temp <- vector[i]
            vector[i] <- vector[j]
            vector[j] <- temp
        FinSi
    Fin Para
    temp <- vector[i+1]
    vector[i+1] <- vector[fin]
    vector[fin] <- temp
    pivote <- i + 1
FinFuncion
```

FIN

# Prueba de Escritorio:

Datos de entrada:

- cantidad = 4
- vector = 8, 3, 5, 1

| Llamada | Pivote (fin) | Proceso de partición | Resultado |
|---|---|---|---|
| QuickSort(0,3) | pivoteValor=1 | ninguno ≤ 1, se coloca 1 al inicio | 1, 3, 5, 8 (pivote pos 0) |
| QuickSort(1,3) | pivoteValor=8 | 3 y 5 ≤ 8 | 3, 5, 8 (pivote pos 3) |
| QuickSort(1,2) | pivoteValor=5 | 3 ≤ 5 | 3, 5 (pivote pos 2) |

**Salida:** Vector ordenado: 1 3 5 8
