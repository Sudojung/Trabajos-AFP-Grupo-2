# Ejercicio 5:

Función factorial: Implementar una función que calcule el factorial de un número.

# Algoritmo:

INICIO

```
Definir numero, resultado Como Entero

Escribir "Ingrese un número entero:"
Leer numero

resultado <- factorial(numero)

Escribir "El factorial de ", numero, " es: ", resultado

Funcion resultado <- factorial(n Como Entero)
    Definir i Como Entero
    Definir resultado Como Entero
    resultado <- 1
    Para i <- 1 Hasta n Hacer
        resultado <- resultado * i
    Fin Para
FinFuncion
```

FIN

# Prueba de Escritorio:

Datos de entrada:

- numero = 5

| i | Operación (resultado) | resultado |
|---|---|---|
| - | Valor inicial | 1 |
| 1 | 1 * 1 | 1 |
| 2 | 1 * 2 | 2 |
| 3 | 2 * 3 | 6 |
| 4 | 6 * 4 | 24 |
| 5 | 24 * 5 | 120 |

**Salida:** El factorial de 5 es: 120
