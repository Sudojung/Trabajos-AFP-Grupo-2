# Ejercicio 7:

Ordenamiento por inserción: Implementar Insertion Sort en un vector de enteros.

# Algoritmo:

INICIO

```
Definir cantidad, i, j, clave Como Entero
Definir vector Como Entero

Escribir "Ingrese la cantidad de elementos:"
Leer cantidad

Dimension vector[cantidad]

Escribir "Ingrese los elementos:"
Para i <- 0 Hasta cantidad - 1 Hacer
    Leer vector[i]
Fin Para

Para i <- 1 Hasta cantidad - 1 Hacer
    clave <- vector[i]
    j <- i - 1
    Mientras j >= 0 Y vector[j] > clave Hacer
        vector[j+1] <- vector[j]
        j <- j - 1
    FinMientras
    vector[j+1] <- clave
Fin Para

Escribir "Vector ordenado:"
Para i <- 0 Hasta cantidad - 1 Hacer
    Escribir Sin Saltar vector[i], " "
Fin Para
```

FIN

# Prueba de Escritorio:

Datos de entrada:

- cantidad = 4
- vector = 5, 2, 4, 1

| i | clave | Proceso | Vector resultante |
|---|---|---|---|
| 1 | 2 | 2 < 5 → desplaza; se inserta en pos 0 | 2, 5, 4, 1 |
| 2 | 4 | 4 < 5 → desplaza; se inserta en pos 1 | 2, 4, 5, 1 |
| 3 | 1 | 1 < 5,4,2 → desplaza todo; se inserta en pos 0 | 1, 2, 4, 5 |

**Salida:** Vector ordenado: 1 2 4 5
