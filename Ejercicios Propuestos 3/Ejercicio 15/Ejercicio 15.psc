Algoritmo MatrizSimetrica
    Definir n, f, c Como Entero
    Definir es_simetrica Como Logico
    
    Escribir "Ingrese el tamaño (n) de la matriz cuadrada:"
    Leer n
    
    Definir matriz Como Entero
    Dimension matriz[n, n]
    
    Para f <- 0 Hasta n - 1 Hacer
        Para c <- 0 Hasta n - 1 Hacer
            Escribir "Valor para la posición [", f, "][", c, "]:"
            Leer matriz[f, c]
        Fin Para
    Fin Para
    
    es_simetrica <- Verdadero
    
    Para f <- 0 Hasta n - 1 Hacer
        Para c <- 0 Hasta n - 1 Hacer
            Si matriz[f, c] != matriz[c, f] Entonces
                es_simetrica <- Falso
            Fin Si
        Fin Para
    Fin Para
    
    Escribir "MATRIZ:"
    Para f <- 0 Hasta n - 1 Hacer
        Para c <- 0 Hasta n - 1 Hacer
            Escribir Sin Saltar matriz[f, c], "  "
        Fin Para
        Escribir ""
    Fin Para
    
    Escribir "--------------------------------------------------"
    Si es_simetrica Entonces
        Escribir "La matriz es SIMÉTRICA."
    Sino
        Escribir "La matriz NO es simétrica."
    Fin Si
    
FinAlgoritmo
