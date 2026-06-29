Algoritmo Matriz_Transpuesta
    Definir n, m, f, c Como Entero
    
    Escribir "Ingrese el número de filas (n):"
    Leer n
    Escribir "Ingrese el número de columnas (m):"
    Leer m
    
    Definir Elemento, transpuesta Como Entero
    Dimension Elemento[n, m], transpuesta[m, n] 
    
    // Elementos de la matriz
    Para f <- 0 Hasta n - 1 Hacer
        Para c <- 0 Hasta m - 1 Hacer
            Escribir "Valor para la posición [", f, "][", c, "]:"
            Leer Elemento[f, c]
        Fin Para
    Fin Para
    
    // Como se vería la matriz
    Escribir "MATRIZ:"
    Para f <- 0 Hasta n - 1 Hacer
        Para c <- 0 Hasta m - 1 Hacer
            Escribir Sin Saltar Elemento[f, c], "  "
        Fin Para
        Escribir ""
    Fin Para
    
    // EL procesoo de la matriz transpuesta
    Para f <- 0 Hasta n - 1 Con Paso 1 Hacer
        Para c <- 0 Hasta m - 1 Con Paso 1 Hacer
            transpuesta[c, f] <- Elemento[f, c]
        Fin Para
    Fin Para
    
    Escribir "MATRIZ TRANSPUESTA:"
    Para f <- 0 Hasta m - 1 Hacer 
        Para c <- 0 Hasta n - 1 Hacer
            Escribir Sin Saltar transpuesta[f, c], "  "
        Fin Para
        Escribir ""
    Fin Para
FinAlgoritmo
