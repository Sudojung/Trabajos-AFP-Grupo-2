Algoritmo PromedioDeNotas
    Definir cantidad, i Como Entero
    Definir suma, promedio Como Real 
    Definir vectorNotas Como Real
    
    suma <- 0

    Escribir "Ingrese la cantidad de notas a registrar:"
    Leer cantidad
    
    Dimension vectorNotas[cantidad]
    
    Escribir "Ingrese las notas una por una:"
    
    Para i <- 0 Hasta cantidad - 1  Hacer
        Escribir "Ingrese la nota para la posición ", i, ":"
        Leer vectorNotas[i]
        
        suma <- suma + vectorNotas[i]
    Fin Para
    
    promedio <- suma / cantidad
    
    Escribir "El promedio de las notas es: ", promedio
FinAlgoritmo
