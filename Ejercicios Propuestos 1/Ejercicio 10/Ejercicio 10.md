# Ejercicio 10:

Traduzca un número binario introducido desde el teclado al sistema hexadecimal (base 16) de forma directa, es decir, sin convertir previamente el número binario al sistema decimal.

# Algoritmo:

INICIO

    Definir binario, hex, bloque, digitoHex Como Cadena
    Definir i, j Como Entero
    Definir esBinario Como Logico

    Repetir

        Escribir "Ingrese un número binario (solo 0 y 1):"
        Leer binario

        esBinario <- Verdadero

        Para j <- 1 Hasta Longitud(binario) Hacer

            Si Subcadena(binario, j, j) <> "0" Y Subcadena(binario, j, j) <> "1" Entonces
                esBinario <- Falso
            FinSi

        FinPara

        Si No esBinario Entonces
            Escribir "Error: El texto introducido no es un número binario."
        FinSi

    Hasta Que esBinario

    Mientras Longitud(binario) MOD 4 <> 0 Hacer
        binario <- "0" + binario
    FinMientras

    hex <- ""

    Para i <- 1 Hasta Longitud(binario) Con Paso 4 Hacer

        bloque <- Subcadena(binario, i, i + 3)

        Segun bloque Hacer
            "0000": digitoHex <- "0"
            "0001": digitoHex <- "1"
            "0010": digitoHex <- "2"
            "0011": digitoHex <- "3"
            "0100": digitoHex <- "4"
            "0101": digitoHex <- "5"
            "0110": digitoHex <- "6"
            "0111": digitoHex <- "7"
            "1000": digitoHex <- "8"
            "1001": digitoHex <- "9"
            "1010": digitoHex <- "A"
            "1011": digitoHex <- "B"
            "1100": digitoHex <- "C"
            "1101": digitoHex <- "D"
            "1110": digitoHex <- "E"
            "1111": digitoHex <- "F"
        FinSegun

        hex <- hex + digitoHex

    FinPara

    Escribir "El número en hexadecimal es: ", hex

FIN

# Prueba de Escritorio:

Datos de entrada:

- Primer intento: **102**
- Segundo intento: **111010110**

## Validación de la entrada

| Entrada de binario | Subcadena | ¿Es 0 o 1? | ¿Es binario? |
|--------------------|-----------|------------|--------------|
| 102 | 1 | Sí | No |
| | 0 | Sí | |
| | 2 | No | Rechazado |
| 111010110 | 1 | Sí | Sí |
| | 1 | Sí | |
| | 1 | Sí | |
| | 0 | Sí | |
| | 1 | Sí | |
| | 0 | Sí | |
| | 1 | Sí | |
| | 1 | Sí | |
| | 0 | Sí | Aceptado |

El número binario aceptado es:

111010110

Se agregan ceros a la izquierda para completar grupos de 4 bits:

0001 1101 0110

## Conversión a hexadecimal

| i | Rango de corte | Bloque extraído | Equivalencia hexadecimal | Acumulado |
|---|----------------|-----------------|---------------------------|-----------|
| 1 | Posición 1 a 4 | 0001 | 1 | 1 |
| 5 | Posición 5 a 8 | 1101 | D | 1D |
| 9 | Posición 9 a 12 | 0110 | 6 | 1D6 |

## Resultado final

- Número binario: **111010110**
- Número hexadecimal: **1D6**
