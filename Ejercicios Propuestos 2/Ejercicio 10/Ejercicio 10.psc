Algoritmo Factoriales
    Definir n, i, factorial Como Entero
    
    // Bucle que se repite y muestra error si no es natural
    Repetir
        Escribir "Introduzca un entero positivo: "
        Leer n
        
        // Si se escribe un número menor a 1 sale el error
        Si n < 1 Entonces
            Escribir "¡Error! Debe ingresar un número natural."
        FinSi
    Hasta Que n >= 1
    
    factorial <- 1
    i <- 1
    
    Mientras i <= n Hacer
        factorial <- factorial * i
        i <- i + 1
    FinMientras
    
    Escribir "El factorial de ", n ," es: ", factorial
FinAlgoritmo
