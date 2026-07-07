# Ejercicio 14:

Ordenamiento con funciones: Crear una función que ordene un vector y otra que lo imprima.

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

Ordenar(vector, cantidad)
Imprimir(vector, cantidad)

SubProceso Ordenar(Por Referencia vector Como Entero, cantidad Como Entero)
    Definir i, j, temp Como Entero
    Para i <- 0 Hasta cantidad - 2 Hacer
        Para j <- 0 Hasta cantidad - 2 - i Hacer
            Si vector[j] > vector[j+1] Entonces
                temp <- vector[j]
                vector[j] <- vector[j+1]
                vector[j+1] <- temp
            FinSi
        Fin Para
    Fin Para
FinSubProceso

SubProceso Imprimir(vector Como Entero, cantidad Como Entero)
    Definir i Como Entero
    Escribir "Vector ordenado:"
    Para i <- 0 Hasta cantidad - 1 Hacer
        Escribir Sin Saltar vector[i], " "
    Fin Para
FinSubProceso
```

FIN

# Prueba de Escritorio:

Datos de entrada:

- cantidad = 4
- vector = 9, 3, 7, 1

| Pasada (i) | Comparaciones (j) | Vector resultante |
|---|---|---|
| i=0 | 9>3, 9>7, 9>1 (intercambios sucesivos) | 3, 7, 1, 9 |
| i=1 | 3<7 (sin cambio), 7>1 (intercambio) | 3, 1, 7, 9 |
| i=2 | 3>1 (intercambio) | 1, 3, 7, 9 |

**Salida:** Vector ordenado: 1 3 7 9
