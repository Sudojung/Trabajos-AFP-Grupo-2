Funcion posicion <- Particion(vector Por Referencia, inicio, fin)

    Definir pivote, i, j, aux Como Entero

    pivote <- vector[fin]
    i <- inicio - 1

    Para j <- inicio Hasta fin - 1 Hacer
        Si vector[j] <= pivote Entonces
            i <- i + 1

            aux <- vector[i]
            vector[i] <- vector[j]
            vector[j] <- aux
        FinSi
    FinPara

    aux <- vector[i + 1]
    vector[i + 1] <- vector[fin]
    vector[fin] <- aux

    posicion <- i + 1

FinFuncion


SubProceso QuickSort(vector Por Referencia, inicio, fin)

    Definir pivote Como Entero

    Si inicio < fin Entonces

        pivote <- Particion(vector, inicio, fin)

        QuickSort(vector, inicio, pivote - 1)
        QuickSort(vector, pivote + 1, fin)

    FinSi

FinSubProceso


Algoritmo OrdenamientoQuickSort

    Definir n, i Como Entero
    Definir vector Como Entero

    Escribir "Ingrese la cantidad de elementos:"
    Leer n

    Dimension vector[n]

    Para i <- 0 Hasta n - 1 Hacer
        Escribir "Elemento ", i, ":"
        Leer vector[i]
    FinPara

    QuickSort(vector, 0, n - 1)

    Escribir "Vector ordenado:"

    Para i <- 0 Hasta n - 1 Hacer
        Escribir Sin Saltar vector[i], " "
    FinPara
    Escribir ""

FinAlgoritmo
