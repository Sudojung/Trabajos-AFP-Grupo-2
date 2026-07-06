# Ejercicio 4:

Escriba un programa que rote hacia la izquierda los dígitos de un número tantas veces como indique el promedio de sus dígitos.

Ejemplo:
Si el número ingresado es **123**, el resultado final será **312**.

# Algoritmo:

INICIO

    Definir num, temp, digito, cantidad Como Entero
    Definir sumaDigitos, promedio, i, primerDigito, divisor Como Entero

    Escribir "Ingrese un número:"
    Leer num

    temp <- num
    cantidad <- 0
    sumaDigitos <- 0

    Mientras temp > 0 Hacer

        digito <- temp MOD 10
        sumaDigitos <- sumaDigitos + digito
        cantidad <- cantidad + 1
        temp <- Trunc(temp / 10)

    FinMientras

    promedio <- Trunc(sumaDigitos / cantidad)

    Escribir "Cantidad de dígitos: ", cantidad
    Escribir "Promedio de dígitos (cantidad de rotaciones): ", promedio

    Para i <- 1 Hasta promedio Hacer

        divisor <- 10 ^ (cantidad - 1)

        primerDigito <- Trunc(num / divisor)

        num <- (num MOD divisor) * 10 + primerDigito

        Escribir "Rotación ", i, ": ", num

    FinPara

FIN

# Prueba de Escritorio:

Datos de entrada:
- num = 123

## Cálculo del promedio de los dígitos

| temp inicial | Dígito (temp MOD 10) | Suma de dígitos | Cantidad de dígitos | temp final (Trunc(temp/10)) |
|--------------|----------------------|-----------------|---------------------|-----------------------------|
| 123 | 3 | 0 + 3 = 3 | 1 | 12 |
| 12 | 2 | 3 + 2 = 5 | 2 | 1 |
| 1 | 1 | 5 + 1 = 6 | 3 | 0 |

Promedio de los dígitos:

- sumaDigitos = 6
- cantidad = 3

\[
promedio = Trunc(6 / 3) = 2
\]

## Rotaciones

| Rotación | Primer dígito | Nuevo número |
|----------|---------------|--------------|
| Inicial | - | 123 |
| 1 | 1 | 231 |
| 2 | 2 | 312 |

## Resultado final

- Cantidad de dígitos: **3**
- Promedio de los dígitos: **2**
- Número después de las rotaciones: **312**
