# Ejercicio 4:

Máximo y mínimo: Encontrar el mayor y menor valor en un vector.

# Algoritmo:

INICIO

```
Definir cantidad, i Como Entero
Definir vector Como Entero
Definir maximo, minimo Como Entero

Escribir "Ingrese la cantidad de elementos:"
Leer cantidad

Dimension vector[cantidad]

Escribir "Ingrese los elementos:"
Para i <- 0 Hasta cantidad - 1 Hacer
    Escribir "Elemento ", i, ":"
    Leer vector[i]
Fin Para

maximo <- vector[0]
minimo <- vector[0]

Para i <- 1 Hasta cantidad - 1 Hacer
    Si vector[i] > maximo Entonces
        maximo <- vector[i]
    FinSi
    Si vector[i] < minimo Entonces
        minimo <- vector[i]
    FinSi
Fin Para

Escribir "El valor máximo es: ", maximo
Escribir "El valor mínimo es: ", minimo
```

FIN

# Prueba de Escritorio:

Datos de entrada:

- cantidad = 4
- vector = 7, 2, 9, 4

| i | vector[i] | Comparación | maximo | minimo |
|---|---|---|---|---|
| - | - | Valores iniciales | 7 | 7 |
| 1 | 2 | 2 < 7 | 7 | 2 |
| 2 | 9 | 9 > 7 | 9 | 2 |
| 3 | 4 | sin cambios | 9 | 2 |

**Salida:** El valor máximo es: 9 — El valor mínimo es: 2
