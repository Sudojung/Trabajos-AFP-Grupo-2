# Ejercicio 19:

Ordenamiento combinado: Implementar Merge Sort y comparar su eficiencia con Bubble Sort.

# Algoritmo:

INICIO

```
Definir cantidad, i Como Entero
Definir vectorMerge, vectorBurbuja Como Entero
Definir comparacionesMerge, comparacionesBurbuja Como Entero

Escribir "Ingrese la cantidad de elementos:"
Leer cantidad

Dimension vectorMerge[cantidad]
Dimension vectorBurbuja[cantidad]

Escribir "Ingrese los elementos:"
Para i <- 0 Hasta cantidad - 1 Hacer
    Leer vectorMerge[i]
    vectorBurbuja[i] <- vectorMerge[i]
Fin Para

comparacionesMerge <- 0
comparacionesBurbuja <- 0

MergeSort(vectorMerge, 0, cantidad - 1, comparacionesMerge)
BubbleSort(vectorBurbuja, cantidad, comparacionesBurbuja)

Escribir "Vector ordenado con Merge Sort:"
Para i <- 0 Hasta cantidad - 1 Hacer
    Escribir Sin Saltar vectorMerge[i], " "
Fin Para
Escribir "Comparaciones realizadas (Merge Sort): ", comparacionesMerge

Escribir "Vector ordenado con Bubble Sort:"
Para i <- 0 Hasta cantidad - 1 Hacer
    Escribir Sin Saltar vectorBurbuja[i], " "
Fin Para
Escribir "Comparaciones realizadas (Bubble Sort): ", comparacionesBurbuja

SubProceso MergeSort(Por Referencia vector Como Entero, inicio Como Entero, fin Como Entero, Por Referencia comparaciones Como Entero)
    Definir medio Como Entero
    Si inicio < fin Entonces
        medio <- (inicio + fin) / 2
        MergeSort(vector, inicio, medio, comparaciones)
        MergeSort(vector, medio + 1, fin, comparaciones)
        Combinar(vector, inicio, medio, fin, comparaciones)
    FinSi
FinSubProceso

SubProceso Combinar(Por Referencia vector Como Entero, inicio Como Entero, medio Como Entero, fin Como Entero, Por Referencia comparaciones Como Entero)
    Definir izquierda, derecha, k Como Entero
    Definir temporal Como Entero
    Dimension temporal[fin - inicio + 1]
    izquierda <- inicio
    derecha <- medio + 1
    k <- 0
    Mientras izquierda <= medio Y derecha <= fin Hacer
        comparaciones <- comparaciones + 1
        Si vector[izquierda] <= vector[derecha] Entonces
            temporal[k] <- vector[izquierda]
            izquierda <- izquierda + 1
        SinO
            temporal[k] <- vector[derecha]
            derecha <- derecha + 1
        FinSi
        k <- k + 1
    FinMientras
    Mientras izquierda <= medio Hacer
        temporal[k] <- vector[izquierda]
        izquierda <- izquierda + 1
        k <- k + 1
    FinMientras
    Mientras derecha <= fin Hacer
        temporal[k] <- vector[derecha]
        derecha <- derecha + 1
        k <- k + 1
    FinMientras
    Para k <- 0 Hasta fin - inicio Hacer
        vector[inicio + k] <- temporal[k]
    Fin Para
FinSubProceso

SubProceso BubbleSort(Por Referencia vector Como Entero, cantidad Como Entero, Por Referencia comparaciones Como Entero)
    Definir i, j, temp Como Entero
    Para i <- 0 Hasta cantidad - 2 Hacer
        Para j <- 0 Hasta cantidad - 2 - i Hacer
            comparaciones <- comparaciones + 1
            Si vector[j] > vector[j+1] Entonces
                temp <- vector[j]
                vector[j] <- vector[j+1]
                vector[j+1] <- temp
            FinSi
        Fin Para
    Fin Para
FinSubProceso
```

FIN

# Prueba de Escritorio:

Datos de entrada:

- cantidad = 4
- vector = 5, 2, 4, 1

**Merge Sort:**

| División | Combinación | comparaciones |
|---|---|---|
| [5] y [2] | se combinan → [2,5] | 1 |
| [4] y [1] | se combinan → [1,4] | 1 |
| [2,5] y [1,4] | se combinan → [1,2,4,5] | 2 |

Total de comparaciones Merge Sort = 4

**Bubble Sort:**

| Pasada (i) | Comparaciones (j) | Vector resultante |
|---|---|---|
| i=0 | 5>2, 5>4, 5>1 (3 comparaciones, 3 intercambios) | 2, 4, 1, 5 |
| i=1 | 2<4, 4>1 (2 comparaciones, 1 intercambio) | 2, 1, 4, 5 |
| i=2 | 2>1 (1 comparación, 1 intercambio) | 1, 2, 4, 5 |

Total de comparaciones Bubble Sort = 6

**Salida:**
Vector ordenado con Merge Sort: 1 2 4 5 — Comparaciones: 4
Vector ordenado con Bubble Sort: 1 2 4 5 — Comparaciones: 6

**Conclusión:** Para este conjunto de datos, Merge Sort requirió menos comparaciones que Bubble Sort, lo que evidencia su mayor eficiencia, especialmente notable a medida que crece el tamaño del vector.
