# Ejercicio 15:

Matrices simétricas: Verificar si una matriz cuadrada es simétrica.

# Algoritmo:

INICIO

```
Definir n, i, j Como Entero
Definir matriz Como Entero
Definir esSimetrica Como Logico

Escribir "Ingrese el tamaño n de la matriz cuadrada:"
Leer n

Dimension matriz[n,n]

Escribir "Ingrese los elementos de la matriz:"
Para i <- 0 Hasta n - 1 Hacer
    Para j <- 0 Hasta n - 1 Hacer
        Leer matriz[i,j]
    Fin Para
Fin Para

esSimetrica <- Verdadero

Para i <- 0 Hasta n - 1 Hacer
    Para j <- 0 Hasta n - 1 Hacer
        Si matriz[i,j] <> matriz[j,i] Entonces
            esSimetrica <- Falso
        FinSi
    Fin Para
Fin Para

Si esSimetrica Entonces
    Escribir "La matriz es simétrica."
SinO
    Escribir "La matriz NO es simétrica."
FinSi
```

FIN

# Prueba de Escritorio:

Datos de entrada:

- n = 3
- matriz = [[1, 2, 3], [2, 5, 6], [3, 6, 9]]

| i | j | matriz[i,j] | matriz[j,i] | ¿Iguales? |
|---|---|---|---|---|
| 0 | 1 | 2 | 2 | Sí |
| 0 | 2 | 3 | 3 | Sí |
| 1 | 2 | 6 | 6 | Sí |

Como todas las comparaciones simétricas coinciden, esSimetrica permanece Verdadero.

**Salida:** La matriz es simétrica.
