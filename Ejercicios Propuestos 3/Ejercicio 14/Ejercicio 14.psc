Funcion OrdenarVector (vector Por Referencia, n Como Entero)
    Definir i, j, aux Como Entero
    Para i <- 0 Hasta n - 2 Con Paso 1 Hacer
        Para j <- 0 Hasta n - i - 2 Con Paso 1 Hacer
            Si vector[j] > vector[j+1] Entonces
                aux <- vector[j]
                vector[j] <- vector[j+1]
                vector[j+1] <- aux
            Fin Si
        Fin Para
    Fin Para
FinFuncion

Funcion ImprimirVector (vector, n Como Entero)
    Definir i Como Entero
    Para i <- 0 Hasta n - 1 Con Paso 1 Hacer
        Escribir Sin Saltar vector[i], " "
    Fin Para
    Escribir ""
FinFuncion

Algoritmo OrdenamientoConFunciones
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
    ImprimirVector(mis_numeros, n)
    
    OrdenarVector(mis_numeros, n)
    
    Escribir "Vector ordenado:"
    ImprimirVector(mis_numeros, n)
    
FinAlgoritmo
