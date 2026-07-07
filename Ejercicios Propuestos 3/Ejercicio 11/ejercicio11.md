# Ejercicio 11:

Funciones con parámetros por referencia: Implementar una función que intercambie dos valores usando referencias.

# Algoritmo:

INICIO

```
Definir a, b Como Entero

Escribir "Ingrese el valor de a:"
Leer a
Escribir "Ingrese el valor de b:"
Leer b

Escribir "Antes del intercambio: a=", a, " b=", b

Intercambiar(a, b)

Escribir "Después del intercambio: a=", a, " b=", b

SubProceso Intercambiar(Por Referencia x Como Entero, Por Referencia y Como Entero)
    Definir temp Como Entero
    temp <- x
    x <- y
    y <- temp
FinSubProceso
```

FIN

# Prueba de Escritorio:

Datos de entrada:

- a = 5
- b = 10

| Paso | Operación | x (a) | y (b) |
|---|---|---|---|
| Antes | Valores iniciales | 5 | 10 |
| 1 | temp <- x | temp = 5 | - |
| 2 | x <- y | 10 | 10 |
| 3 | y <- temp | 10 | 5 |

**Salida:**
Antes del intercambio: a=5 b=10
Después del intercambio: a=10 b=5
