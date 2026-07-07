# Ejercicio 21:

Dado un vector de números enteros, escriba una función que ordene los elementos de tal forma que los números pares aparezcan antes que los números impares. Además, los números pares deberán estar ordenados de forma ascendente, mientras que los números impares deberán estar ordenados de forma descendente.

# Algoritmo:

INICIO

```
Definir cantidad, i, j, temp Como Entero
Definir vector, pares, impares Como Entero
Definir cantPares, cantImpares Como Entero

Escribir "Ingrese la cantidad de elementos:"
Leer cantidad

Dimension vector[cantidad]

Escribir "Ingrese los elementos:"
Para i <- 0 Hasta cantidad - 1 Hacer
    Leer vector[i]
Fin Para

cantPares <- 0
cantImpares <- 0

Para i <- 0 Hasta cantidad - 1 Hacer
    Si vector[i] MOD 2 = 0 Entonces
        pares[cantPares] <- vector[i]
        cantPares <- cantPares + 1
    SinO
        impares[cantImpares] <- vector[i]
        cantImpares <- cantImpares + 1
    FinSi
Fin Para

' Ordenar pares de forma ascendente (burbuja)
Para i <- 0 Hasta cantPares - 2 Hacer
    Para j <- 0 Hasta cantPares - 2 - i Hacer
        Si pares[j] > pares[j+1] Entonces
            temp <- pares[j]
            pares[j] <- pares[j+1]
            pares[j+1] <- temp
        FinSi
    Fin Para
Fin Para

' Ordenar impares de forma descendente (burbuja)
Para i <- 0 Hasta cantImpares - 2 Hacer
    Para j <- 0 Hasta cantImpares - 2 - i Hacer
        Si impares[j] < impares[j+1] Entonces
            temp <- impares[j]
            impares[j] <- impares[j+1]
            impares[j+1] <- temp
        FinSi
    Fin Para
Fin Para

' Combinar resultado: pares seguido de impares
Para i <- 0 Hasta cantPares - 1 Hacer
    vector[i] <- pares[i]
Fin Para
Para j <- 0 Hasta cantImpares - 1 Hacer
    vector[cantPares + j] <- impares[j]
Fin Para

Escribir "Vector resultante:"
Para i <- 0 Hasta cantidad - 1 Hacer
    Escribir Sin Saltar vector[i], " "
Fin Para
```

FIN

# Prueba de Escritorio:

Datos de entrada:

- cantidad = 6
- vector = 1, 2, 3, 4, 5, 6

**Separación en pares e impares:**

| Elemento | vector[i] MOD 2 | Destino |
|---|---|---|
| 1 | 1 (impar) | impares[0] = 1 |
| 2 | 0 (par) | pares[0] = 2 |
| 3 | 1 (impar) | impares[1] = 3 |
| 4 | 0 (par) | pares[1] = 4 |
| 5 | 1 (impar) | impares[2] = 5 |
| 6 | 0 (par) | pares[2] = 6 |

pares = {2, 4, 6}  →  cantPares = 3
impares = {1, 3, 5}  →  cantImpares = 3

**Ordenamiento de pares (ascendente):** ya se encuentran ordenados → {2, 4, 6}

**Ordenamiento de impares (descendente):**

| Pasada | Comparación | impares resultante |
|---|---|---|
| i=0 | 1<3 → intercambia | 3, 1, 5 |
| i=0 | 1<5 → intercambia | 3, 5, 1 |
| i=1 | 3<5 → intercambia | 5, 3, 1 |

impares ordenado = {5, 3, 1}

**Combinación final:** vector = pares + impares = {2, 4, 6, 5, 3, 1}

**Salida:** Vector resultante: 2 4 6 5 3 1
