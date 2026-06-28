Algoritmo SumaDeElementos_Vector
    Definir cantidad, i, suma Como Entero
    Definir vectorNumeros Como Entero
    
    suma <- 0
    
    Escribir "Ingrese la cantidad de elementos que tendrá el vector:"
    Leer cantidad
    
    Dimension vectorNumeros[cantidad]
    
    // lectura de elementos y cálculo de la suma
    Escribir "Ingrese los números enteros uno por uno:"
    
    //inicia en 0 y va hasta cantidad - 1
    Para i <- 0 Hasta cantidad - 1 Con Paso 1 Hacer
        Escribir "Valor para la posición ", i, ":"
        Leer vectorNumeros[i]
        
        suma <- suma + vectorNumeros[i]
    Fin Para
    
    //resultado final
    Escribir "La suma total de los elementos del vector es: ", suma
FinAlgoritmo
