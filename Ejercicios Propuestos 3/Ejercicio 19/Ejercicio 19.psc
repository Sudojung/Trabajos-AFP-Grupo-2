SubProceso BubbleSort(vector Por Referencia, n)
    Definir i, j, aux Como Entero

    Para i <- 1 Hasta n - 1 Hacer
        Para j <- 1 Hasta n - i Hacer
            Si vector[j] > vector[j + 1] Entonces
                aux <- vector[j]
                vector[j] <- vector[j + 1]
                vector[j + 1] <- aux
            FinSi
        FinPara
    FinPara
FinSubProceso


SubProceso Merge(vector Por Referencia, izquierda, medio, derecha)
    Definir i, j, k, n1, n2 Como Entero
    Definir L, R Como Entero

    n1 <- medio - izquierda + 1
    n2 <- derecha - medio

    Dimension L[n1]
    Dimension R[n2]

    Para i <- 1 Hasta n1 Hacer
        L[i] <- vector[izquierda + i - 1]
    FinPara

    Para j <- 1 Hasta n2 Hacer
        R[j] <- vector[medio + j]
    FinPara

    i <- 1
    j <- 1
    k <- izquierda

    Mientras i <= n1 Y j <= n2 Hacer
        Si L[i] <= R[j] Entonces
            vector[k] <- L[i]
            i <- i + 1
        Sino
            vector[k] <- R[j]
            j <- j + 1
        FinSi
        k <- k + 1
    FinMientras

    Mientras i <= n1 Hacer
        vector[k] <- L[i]
        i <- i + 1
        k <- k + 1
    FinMientras

    Mientras j <= n2 Hacer
        vector[k] <- R[j]
        j <- j + 1
        k <- k + 1
    FinMientras
FinSubProceso


SubProceso MergeSort(vector Por Referencia, izquierda, derecha)
    Definir medio Como Entero

    Si izquierda < derecha Entonces
        medio <- Trunc((izquierda + derecha) / 2)

        MergeSort(vector, izquierda, medio)
        MergeSort(vector, medio + 1, derecha)

        Merge(vector, izquierda, medio, derecha)
    FinSi
FinSubProceso


SubProceso MostrarVector(vector, n)
    Definir i Como Entero

    Para i <- 1 Hasta n Hacer
        Escribir Sin Saltar vector[i], " "
    FinPara
    Escribir ""
FinSubProceso


Algoritmo OrdenamientoCombinado
    Definir n, i Como Entero
    Definir vectorBubble, vectorMerge Como Entero

    Repetir
        Escribir "Ingrese la cantidad de elementos:"
        Leer n

        Si n <= 0 Entonces
            Escribir "ERROR: La cantidad debe ser mayor que 0."
        FinSi
    Hasta Que n > 0

    Dimension vectorBubble[n]
    Dimension vectorMerge[n]

    Para i <- 1 Hasta n Hacer
        Escribir "Elemento ", i, ":"
        Leer vectorBubble[i]
        vectorMerge[i] <- vectorBubble[i]
    FinPara

    BubbleSort(vectorBubble, n)
    MergeSort(vectorMerge, 1, n)

    Escribir ""
    Escribir "Vector ordenado con Bubble Sort:"
    MostrarVector(vectorBubble, n)

    Escribir "Vector ordenado con Merge Sort:"
    MostrarVector(vectorMerge, n)

    Escribir ""
    Escribir "Comparación de eficiencia:"
    Escribir "Bubble Sort tiene complejidad O(n^2)."
    Escribir "Merge Sort tiene complejidad O(n log n)."
    Escribir "Merge Sort es más eficiente que Bubble Sort para grandes cantidades de datos."

FinAlgoritmo
