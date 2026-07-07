# Ejercicio 23:

El máximo común divisor (MCD) de dos enteros es el entero más grande que divide a cada uno de los números. Escriba un programa mcd que devuelva el máximo común divisor de dos enteros.

# Algoritmo:

INICIO

```
Definir a, b, resultado Como Entero

Escribir "Ingrese el primer número:"
Leer a
Escribir "Ingrese el segundo número:"
Leer b

resultado <- mcd(a, b)

Escribir "El máximo común divisor es: ", resultado

Funcion resultado <- mcd(a Como Entero, b Como Entero)
    Definir residuo Como Entero
    Mientras b <> 0 Hacer
        residuo <- a MOD b
        a <- b
        b <- residuo
    FinMientras
    resultado <- a
FinFuncion
```

FIN

# Prueba de Escritorio:

Datos de entrada:

- a = 48
- b = 18

| Iteración | residuo = a MOD b | a <- b | b <- residuo |
|---|---|---|---|
| 1 | 48 MOD 18 = 12 | 18 | 12 |
| 2 | 18 MOD 12 = 6 | 12 | 6 |
| 3 | 12 MOD 6 = 0 | 6 | 0 |

El bucle termina cuando b = 0. resultado <- a = 6

**Salida:** El máximo común divisor es: 6
