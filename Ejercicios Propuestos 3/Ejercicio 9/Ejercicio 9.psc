Algoritmo MultiplicacionDEMatrices
    Definir n, f, c, k Como Entero
    
    Escribir "Ingrese el tamaño (n) de las matrices cuadradas:"
    Leer n
    
    Definir matrizA, matrizB, resultado Como Entero
    Dimension matrizA[n, n], matrizB[n, n], resultado[n, n]
    
    Escribir " ELEMENTOS DE LA MATRIZ (A) "
    Para f <- 0 Hasta n - 1 Hacer
        Para c <- 0 Hasta n - 1 Hacer
            Escribir "Elemento A[", f, "][", c, "]:"
            Leer matrizA[f, c]
        Fin Para
    Fin Para
    
    Escribir " ELEMENTOS DE LA MATRIZ (B) : "
    Para f <- 0 Hasta n - 1 Hacer
        Para c <- 0 Hasta n - 1 Hacer
            Escribir "Elemento B[", f, "][", c, "]:"
            Leer matrizB[f, c]
        Fin Para
    Fin Para
    
    // Proceso de la multiplicación de las matrices
    Para f <- 0 Hasta n - 1 Hacer
        Para c <- 0 Hasta n - 1 Hacer
            resultado[f, c] <- 0 
            Para k <- 0 Hasta n - 1 Hacer
                resultado[f, c] <- resultado[f, c] + (matrizA[f, k] * matrizB[k, c])
            Fin Para
        Fin Para
    Fin Para
    
    // como se ve la matriz A
    Escribir ""
    Escribir " MATRIZ (A) : "
    Para f <- 0 Hasta n - 1 Hacer
        Para c <- 0 Hasta n - 1 Hacer
            Escribir Sin Saltar matrizA[f, c], "  "
        Fin Para
        Escribir ""
    Fin Para
    
    // como se ve la matriz B
    Escribir ""
    Escribir " MATRIZ (B) : "
    Para f <- 0 Hasta n - 1 Hacer
        Para c <- 0 Hasta n - 1 Hacer
            Escribir Sin Saltar matrizB[f, c], "  "
        Fin Para
        Escribir ""
    Fin Para
    
    // Resultado
    Escribir ""
    Escribir " MATRIZ (A x B) es igual a: "
    Para f <- 0 Hasta n - 1 Hacer
        Para c <- 0 Hasta n - 1 Hacer
            Escribir Sin Saltar resultado[f, c], "  "
        Fin Para
        Escribir ""
    Fin Para
FinAlgoritmo
