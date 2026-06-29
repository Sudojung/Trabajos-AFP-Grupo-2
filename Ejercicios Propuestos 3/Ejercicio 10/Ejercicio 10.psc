Algoritmo VectorDinamica_ConApuntadores
    Definir n, i Como Entero
    
    Escribir "Ingrese el tamaño del vector:"
    Leer n
    
    Definir vector Como Entero
    Dimension vector[n] 
    
    Escribir "Llenando el vector..."
    Para i <- 0 Hasta n - 1 Hacer
        Escribir "Valor para la posición ", i, ":"
        Leer vector[i]
    Fin Para
    
    Escribir "Vector dinámico:"
    Para i <- 0 Hasta n - 1 Hacer
        Escribir Sin Saltar vector[i], " "
    Fin Para
    Escribir ""
    
FinAlgoritmo
