Algoritmo MaximoYMinimoVector
    Definir cantidad, i Como Entero
    Definir maximo, minimo Como Real 
    
    Escribir "Ingrese la cantidad de elementos:"
    Leer cantidad
    
    Definir vectorNumeros Como Real
    Dimension vectorNumeros[cantidad]
    
    Para i <- 0 Hasta cantidad - 1 Hacer
        Escribir "Valor para la posición ", i, ":"
        Leer vectorNumeros[i]
    Fin Para
    
    maximo <- vectorNumeros[0]
    minimo <- vectorNumeros[0]
    
    Para i <- 1 Hasta cantidad - 1 Con Paso 1 Hacer
        Si vectorNumeros[i] > maximo Entonces
            maximo <- vectorNumeros[i]
        Fin Si
        
        Si vectorNumeros[i] < minimo Entonces
            minimo <- vectorNumeros[i]
        Fin Si
    Fin Para
    
    Escribir "El elemento MÁXIMO del vector es: ", maximo
    Escribir "El elementos MÍNIMO del vector es: ", minimo
FinAlgoritmo
