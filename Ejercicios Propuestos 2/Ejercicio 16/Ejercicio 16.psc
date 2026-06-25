Algoritmo ContarDigitos
    Definir N, temp, digitos Como Entero

    Repetir
        Escribir "Ingrese un número natural:"
        Leer N
        
        Si N < 1 Entonces
            Escribir "¡Error! Debe ingresar un número natural (mayor o igual a 1)."
            Escribir "Por favor, intente de nuevo."
            Escribir "--------------------------------------------------"
        FinSi
    Hasta Que N >= 1

    digitos <- 0
    temp <- N // Guardamos N en una variable temporal para no borrar el original
    
    Mientras temp > 0 Hacer
        // Dividimos entre 10 y Trunc corta los decimales
        temp <- Trunc(temp / 10) 
        
        // Sumamos 1 al contador por cada corte que hacemos
        digitos <- digitos + 1   
    FinMientras
    

    Escribir "El número ", N, " tiene ", digitos, " dígito(s)."
    
FinAlgoritmo
