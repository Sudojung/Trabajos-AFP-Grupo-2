Algoritmo Factoriales_Sucesivos
    Definir limite, i, factorial Como Entero
    
    // Bucle de validación hasta que se ingrese un número válido
    Repetir
        Escribir "Ingrese un número entero positivo (mayor o igual a 1):"
        Leer limite
        
        // Si el número es incorrecto, se muestra error
        Si limite < 1 Entonces
            Escribir "¡Error! El número ingresado no es válido."
            Escribir "Por favor, intente de nuevo con un número positivo."
            Escribir "--------------------------------------------------"
        FinSi
    Hasta Que limite >= 1
    
    factorial <- 1
    Escribir "--------------------------------------------------"
    Escribir "Los factoriales hasta el ", limite, " son:"
    
    // Para calcular e imprimir 
    Para i <- 1 Hasta limite Hacer
        factorial <- factorial * i
        Escribir "El factorial de ", i, " es: ", factorial
    FinPara
    
FinAlgoritmo
