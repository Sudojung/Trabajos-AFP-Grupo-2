Algoritmo SistemaCalificacionesConArchivos
    Definir nombre Como Cadena
    Definir nota1, nota2, nota3 Como Real
    Definir i, j, cantidadA, cantidadB, tercioA, tercioB Como Entero
    Definir tempProm Como Real
    Definir tempNombre Como Cadena
    
    Dimension nombresA[100]
    Dimension nombresB[100]
    Dimension promediosA[100]
    Dimension promediosB[100]
    
    cantidadA <- 0
    cantidadB <- 0
    
    // Lectura manual simulando archivo Grupo A
    Escribir "Ingrese cantidad de estudiantes del Grupo A:"
    Leer cantidadA
    
    Para i <- 0 Hasta cantidadA - 1 Hacer
        Escribir "Nombre del estudiante A ", i + 1, ":"
        Leer nombresA[i]
        Escribir "Ingrese nota 1:"
        Leer nota1
        Escribir "Ingrese nota 2:"
        Leer nota2
        Escribir "Ingrese nota 3:"
        Leer nota3
        
        promediosA[i] <- (nota1 + nota2 + nota3) / 3
    FinPara
    
    // Lectura manual simulando archivo Grupo B
    Escribir "Ingrese cantidad de estudiantes del Grupo B:"
    Leer cantidadB
    
    Para i <- 0 Hasta cantidadB - 1 Hacer
        Escribir "Nombre del estudiante B ", i + 1, ":"
        Leer nombresB[i]
        Escribir "Ingrese nota 1:"
        Leer nota1
        Escribir "Ingrese nota 2:"
        Leer nota2
        Escribir "Ingrese nota 3:"
        Leer nota3
        
        promediosB[i] <- (nota1 + nota2 + nota3) / 3
    FinPara
    
    // Ordenar Grupo A de mayor a menor promedio
    Para i <- 0 Hasta cantidadA - 2 Hacer
        Para j <- 0 Hasta cantidadA - 2 - i Hacer
            Si promediosA[j] < promediosA[j + 1] Entonces
                tempProm <- promediosA[j]
                promediosA[j] <- promediosA[j + 1]
                promediosA[j + 1] <- tempProm
                
                tempNombre <- nombresA[j]
                nombresA[j] <- nombresA[j + 1]
                nombresA[j + 1] <- tempNombre
            FinSi
        FinPara
    FinPara
    
    // Ordenar Grupo B de mayor a menor promedio
    Para i <- 0 Hasta cantidadB - 2 Hacer
        Para j <- 0 Hasta cantidadB - 2 - i Hacer
            Si promediosB[j] < promediosB[j + 1] Entonces
                tempProm <- promediosB[j]
                promediosB[j] <- promediosB[j + 1]
                promediosB[j + 1] <- tempProm
                
                tempNombre <- nombresB[j]
                nombresB[j] <- nombresB[j + 1]
                nombresB[j + 1] <- tempNombre
            FinSi
        FinPara
    FinPara
    
    tercioA <- Trunc(cantidadA / 3)
    tercioB <- Trunc(cantidadB / 3)
    
    Escribir "--------------------------------------"
    Escribir "GRUPO A ORDENADO POR MÉRITO"
    Para i <- 0 Hasta cantidadA - 1 Hacer
        Escribir i + 1, ". ", nombresA[i], " - Promedio: ", promediosA[i]
    FinPara
    
    Escribir "--------------------------------------"
    Escribir "GRUPO B ORDENADO POR MÉRITO"
    Para i <- 0 Hasta cantidadB - 1 Hacer
        Escribir i + 1, ". ", nombresB[i], " - Promedio: ", promediosB[i]
    FinPara
    
    Escribir "--------------------------------------"
    Escribir "TERCIO SUPERIOR GRUPO A"
    Para i <- 0 Hasta tercioA - 1 Hacer
        Escribir nombresA[i], " - Promedio: ", promediosA[i]
    FinPara
    
    Escribir "--------------------------------------"
    Escribir "TERCIO SUPERIOR GRUPO B"
    Para i <- 0 Hasta tercioB - 1 Hacer
        Escribir nombresB[i], " - Promedio: ", promediosB[i]
    FinPara
    
FinAlgoritmo
