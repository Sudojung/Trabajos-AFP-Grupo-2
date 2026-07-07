# Ejercicio 22:

Escriba una función que tome un valor entero y devuelva el número con los dígitos invertidos. Por ejemplo, dado el número 7631, la función debe regresar 1367.

# Algoritmo:

INICIO

```
Definir numero, invertido Como Entero

Escribir "Ingrese un número entero:"
Leer numero

invertido <- invertirNumero(numero)

Escribir "El número invertido es: ", invertido

Funcion invertido <- invertirNumero(numero Como Entero)
    Definir digito Como Entero
    invertido <- 0
    Mientras numero <> 0 Hacer
        digito <- numero MOD 10
        invertido <- (invertido * 10) + digito
        numero <- numero DIV 10
    FinMientras
FinFuncion
```

FIN

# Prueba de Escritorio:

Datos de entrada:

- numero = 7631

| Iteración | digito = numero MOD 10 | invertido = invertido*10 + digito | numero = numero DIV 10 |
|---|---|---|---|
| 1 | 1 | 0*10 + 1 = 1 | 763 |
| 2 | 3 | 1*10 + 3 = 13 | 76 |
| 3 | 6 | 13*10 + 6 = 136 | 7 |
| 4 | 7 | 136*10 + 7 = 1367 | 0 |

El bucle termina cuando numero = 0.

**Salida:** El número invertido es: 1367
