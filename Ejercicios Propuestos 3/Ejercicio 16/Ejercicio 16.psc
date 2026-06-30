Funcion posicion_pivote <- Particionar (vector Por Referencia, bajo Como Entero, alto Como Entero)
    Definir pivote, i, j, aux Como Entero
    pivote <- vector[alto]
    i <- bajo - 1
    
    Para j <- bajo Hasta alto - 1 Con Paso 1 Hacer
        Si vector[j] <= pivote Entonces
            i <- i + 1
            aux <- vector[i]
            vector[i] <- vector[j]
            vector[j] <- aux
        Fin Si
    Fin Para
    
    aux <- vector[i + 1]
    vector[i + 1] <- vector[alto]
    vector[alto] <- aux
    
    posicion_pivote <- i + 1
FinFuncion

Funcion AlgoritmoQuickSort (vector Por Referencia, bajo Como Entero, alto Como Entero)
    Definir pi Como Entero
    Si bajo < alto Entonces
        pi <- Particionar(vector, bajo, alto)
        
        AlgoritmoQuickSort(vector, bajo, pi - 1)
        AlgoritmoQuickSort(vector, pi + 1, alto)
    Fin Si
FinFuncion

Algoritmo ImplementacionQuickSort
    Definir n, i Como Entero
    
    Escribir "Ingrese la cantidad de elementos del vector:"
    Leer n
    
    Definir mis_numeros Como Entero
    Dimension mis_numeros[n]
    
    Para i <- 0 Hasta n - 1 Con Paso 1 Hacer
        Escribir "Ingrese el valor para la posición ", i, ":"
        Leer mis_numeros[i]
    Fin Para
    
    Escribir "Vector original:"
    Para i <- 0 Hasta n - 1 Con Paso 1 Hacer
        Escribir Sin Saltar mis_numeros[i], " "
    Fin Para
    Escribir ""
    
    AlgoritmoQuickSort(mis_numeros, 0, n - 1)
    
    Escribir "Vector ordenado con QuickSort:"
    Para i <- 0 Hasta n - 1 Con Paso 1 Hacer
        Escribir Sin Saltar mis_numeros[i], " "
    Fin Para
    Escribir ""
    
FinAlgoritmo
