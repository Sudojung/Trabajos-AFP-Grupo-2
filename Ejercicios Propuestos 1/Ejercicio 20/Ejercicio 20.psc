Algoritmo numero_triangular

    Definir posicion_n, contador, num_triangular Como Entero

    Escribir "Ingrese la posición del número triangular (valor de n): "
    Leer posicion_n

    Si posicion_n > 0 Entonces

        num_triangular <- 0

        Para contador <- 1 Hasta posicion_n Hacer
            num_triangular <- num_triangular + contador
        FinPara

        Escribir "El número triangular en la posición ", posicion_n, " es: ", num_triangular

    Sino

        Escribir "Error: Debe ingresar una posición válida (entero positivo)."

    FinSi

FinAlgoritmo
