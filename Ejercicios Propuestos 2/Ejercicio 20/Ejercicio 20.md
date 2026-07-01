# Ejercicio 20:

Pasar a binario un número decimal que se ha leído por teclado. 

# Algoritmo:

Algoritmo DecimalABinario

    Definir numero, residuo Como Entero
    Definir binario Como Cadena

    // Validación de entrada
    Repetir

        Escribir "Ingrese un número decimal positivo:"
        Leer numero

        Si numero < 0 Entonces
            Escribir "Error: Debe ingresar un número positivo."
        FinSi

    Hasta Que numero >= 0

    binario <- ""

    // Caso especial para el cero
    Si numero = 0 Entonces

        binario <- "0"

    SiNo

        // Convertimos el número a binario
        Mientras numero > 0 Hacer

            residuo <- numero MOD 2
            binario <- ConvertirATexto(residuo) + binario
            numero <- Trunc(numero / 2)

        FinMientras

    FinSi

    Escribir "El número en binario es: ", binario

FinAlgoritmo



# Prueba de EScritorio:

- Conversión de 13 a Binario

| número | residuo | binario | Operación Realizada | Condición | Salida |
|--------|---------|---------|---------------------|-----------|--------|
| 13 | **1** | "" | residuo ← 13 MOD 2 = **1** | - | - |
| 13 | 1 | **"1"** | binario ← "1" + "" = **"1"** | - | - |
| 13 | 1 | "1" | número ← Trunc(13 / 2) = **6** | - | - |
| 6 | 1 | "1" | - | 6 > 0  | Entra al ciclo |
| 6 | **0** | "1" | residuo ← 6 MOD 2 = **0** | - | - |
| 6 | 0 | **"01"** | binario ← "0" + "1" = **"01"** | - | - |
| 6 | 0 | "01" | número ← Trunc(6 / 2) = **3** | - | - |
| 3 | 0 | "01" | - | 3 > 0  | Entra al ciclo |
| 3 | **1** | "01" | residuo ← 3 MOD 2 = **1** | - | - |
| 3 | 1 | **"101"** | binario ← "1" + "01" = **"101"** | - | - |
| 3 | 1 | "101" | número ← Trunc(3 / 2) = **1** | - | - |
| 1 | 1 | "101" | - | 1 > 0 | Entra al ciclo |
| 1 | **1** | "101" | residuo ← 1 MOD 2 = **1** | - | - |
| 1 | 1 | **"1101"** | binario ← "1" + "101" = **"1101"** | - | - |
| 1 | 1 | "1101" | número ← Trunc(1 / 2) = **0** | - | - |
| - | - | "1101" | - | - | **El número en binario es: 1101** |




