# Ejercicio 6:

Ordenamiento burbuja: Implementar Bubble Sort en una cadena de caracteres.

# Algoritmo:

INICIO

```
Definir cadena Como Cadena
Definir i, j, longitud Como Entero
Definir temp Como Caracter

Escribir "Ingrese una cadena de caracteres:"
Leer cadena

longitud <- Longitud(cadena)

Para i <- 0 Hasta longitud - 2 Hacer
    Para j <- 0 Hasta longitud - 2 - i Hacer
        Si cadena[j] > cadena[j+1] Entonces
            temp <- cadena[j]
            cadena[j] <- cadena[j+1]
            cadena[j+1] <- temp
        FinSi
    Fin Para
Fin Para

Escribir "Cadena ordenada: ", cadena
```

FIN

# Prueba de Escritorio:

Datos de entrada:

- cadena = "dcba"

| Pasada (i) | Comparaciones (j) | Cadena resultante |
|---|---|---|
| i=0 | j=0: d>c → intercambia | cdba |
| i=0 | j=1: d>b → intercambia | cbda |
| i=0 | j=2: d>a → intercambia | cbad |
| i=1 | j=0: c>b → intercambia | bcad |
| i=1 | j=1: c>a → intercambia | bacd |
| i=2 | j=0: b>a → intercambia | abcd |

**Salida:** Cadena ordenada: abcd
