Algoritmo Factoriales
    Definir n, i, factorial Como Entero
    
    // Validamos que el número sea natural 
    Repetir
        Escribir "Introduzca un entero positivo: "
        Leer n
    Hasta Que n >= 1
    

    factorial <- 1
    i <- 1
    
    Mientras i <= n Hacer
        factorial <- factorial * i
        i <- i + 1
    FinMientras
    
    Escribir "El factorial de ", n ," es: ", factorial
FinAlgoritmo
