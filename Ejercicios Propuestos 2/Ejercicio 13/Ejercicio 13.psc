Algoritmo SumaParesImpares
    Definir inicio, final, i Como Entero
    Definir sumaPar, sumaImp Como Entero
    
    sumaPar <- 0
    sumaImp <- 0
    
    Escribir "Ingrese el número de INICIO:"
    Leer inicio
    
    Escribir "Ingrese el número de FIN:"
    Leer final
    
    Escribir "--------------------------------------------------"
    
    Para i <- inicio Hasta final Hacer
        
        // para saber si un número es par o impar
        Si i MOD 2 = 0 Entonces
            // Si el residuo es 0, es PAR. Lo guardamos en los pares.
            sumaPar <- sumaPar + i 
        SiNo
            // Si el residuo no es 0, es IMPAR. Lo guardamos en los impares.
            sumaImp <- sumaImp + i 
        FinSi
        
    FinPara
    
    //  resultados
    Escribir "Rango: del ", inicio, " al ", final
    Escribir "-> La suma total de los números PARES es: ", sumaPar
    Escribir "-> La suma total de los números IMPARES es: ", sumaImp
    Escribir "--------------------------------------------------"
    
FinAlgoritmo
