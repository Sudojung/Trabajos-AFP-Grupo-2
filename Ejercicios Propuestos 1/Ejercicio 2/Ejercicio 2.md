# Ejercicio 2:

Dado un número entero, visualizar por pantalla la suma de todos los números pares desde 1 hasta ese número, la suma de todos los números impares desde 1 hasta ese número y la suma de todos los múltiplos de 5 desde 1 hasta ese número.

# Algoritmo:

INICIO

    Definir n, i Como Entero
    Definir sumaPares, sumaImpares, sumaMultiplos5 Como Entero

    sumaPares <- 0
    sumaImpares <- 0
    sumaMultiplos5 <- 0

    Escribir "Ingrese un número entero (mayor que 1):"
    Leer n

    Mientras n <= 1 Hacer
        Escribir "ERROR: El número debe ser estrictamente mayor que 1."
        Escribir "Por favor, intente nuevamente:"
        Leer n
    FinMientras

    Para i <- 1 Hasta n Hacer

        Si i MOD 2 = 0 Entonces
            sumaPares <- sumaPares + i
        SiNo
            sumaImpares <- sumaImpares + i
        FinSi

        Si i MOD 5 = 0 Entonces
            sumaMultiplos5 <- sumaMultiplos5 + i
        FinSi

    FinPara

    Escribir "La suma de los números pares entre 1 y ", n, " es: ", sumaPares
    Escribir "La suma de los números impares entre 1 y ", n, " es: ", sumaImpares
    Escribir "La suma de los múltiplos de 5 entre 1 y ", n, " es: ", sumaMultiplos5

FIN

# Prueba de Escritorio:

Datos de entrada:
- n = 10

| i | ¿Es Par? | ¿Es Impar? | ¿Es múltiplo de 5? | Suma de pares | Suma de impares | Suma de múltiplos de 5 |
|---|-----------|------------|--------------------|---------------|-----------------|------------------------|
| Inicio | - | - | - | 0 | 0 | 0 |
| 1 | No | Sí | No | 0 | 0 + 1 = 1 | 0 |
| 2 | Sí | No | No | 0 + 2 = 2 | 1 | 0 |
| 3 | No | Sí | No | 2 | 1 + 3 = 4 | 0 |
| 4 | Sí | No | No | 2 + 4 = 6 | 4 | 0 |
| 5 | No | Sí | Sí | 6 | 4 + 5 = 9 | 0 + 5 = 5 |
| 6 | Sí | No | No | 6 + 6 = 12 | 9 | 5 |
| 7 | No | Sí | No | 12 | 9 + 7 = 16 | 5 |
| 8 | Sí | No | No | 12 + 8 = 20 | 16 | 5 |
| 9 | No | Sí | No | 20 | 16 + 9 = 25 | 5 |
| 10 | Sí | No | Sí | 20 + 10 = 30 | 25 | 5 + 10 = 15 |

## Resultados finales

- **Suma de números pares:** 30
- **Suma de números impares:** 25
- **Suma de múltiplos de 5:** 15
