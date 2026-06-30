# Ejercicio 3:

 Matriz identidad: Generar una matriz identidad de tamaño n. 


# Algoritmo:

INICIO

    Definir n, f, c Como Entero
    
    Escribir "Ingrese el tamaño (n) de la matriz cuadrada:"
    Leer n
    
    Definir matriz Como Entero
    Dimension matriz[n, n]
    
    // Generamos la matriz identidad
    Para f <- 0 Hasta n - 1  Hacer
        Para c <- 0 Hasta n - 1  Hacer
            Si f == c Entonces
                matriz[f, c] <- 1 // Es la diagonal principal
            Sino
                matriz[f, c] <- 0 // Y el esto de posiciones
            Fin Si
        Fin Para
    Fin Para
    
    // Mostramos como es la matriz 
    Para f <- 0 Hasta n - 1  Hacer
        Para c <- 0 Hasta n - 1  Hacer
            Escribir Sin Saltar matriz[f, c], "  "
        Fin Para
        Escribir "" // Salto de línea por cada fila para que se vea entendible
    Fin Para

FIN


# Prueba de Escritorio:

Datos de entrada
- n = 3  

|-| elementof | elementoc | Condición (f == c) | Valor asignado | Elaboración de la matriz |
|-|---|---|--------------------|----------------|-----------------------------|
|-| 0 | 0 | Verdadero          | matriz[0,0] = 1 | [1, -, -]                   |
|-| 0 | 1 | Falso              | matriz[0,1] = 0 | [1, 0, -]                   |
|fila 0| 0 | 2 | Falso              | matriz[0,2] = 0 | [1, 0, 0]                   |
|-| 1 | 0 | Falso              | matriz[1,0] = 0 | [0, -, -]                   |
|-| 1 | 1 | Verdadero          | matriz[1,1] = 1 | [0, 1, -]                   |
|fila 1| 1 | 2 | Falso              | matriz[1,2] = 0 | [0, 1, 0]                   |
|-| 2 | 0 | Falso              | matriz[2,0] = 0 | [0, -, -]                   |
|-| 2 | 1 | Falso              | matriz[2,1] = 0 | [0, 0, -]                   |
|fila 2| 2 | 2 | Verdadero          | matriz[2,2] = 1 | [0, 0, 1]                   |


Resultado 
La matriz identidad generada es:

1  0  0
0  1  0
0  0  1
