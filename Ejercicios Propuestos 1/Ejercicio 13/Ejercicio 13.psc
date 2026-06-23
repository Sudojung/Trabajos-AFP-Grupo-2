Algoritmo Suma_Y_Producto_depares

    Definir i, suma Como Entero
    Definir producto Como Real

    suma <- 0
    producto <- 1

    Para i <- 20 Hasta 400 Con Paso 2 Hacer
        suma <- suma + i
        producto <- producto * i
    FinPara

    Escribir "Resultados:"
    Escribir "La suma de números pares entre 20 y 400 es: ", suma
    Escribir "El producto de números pares entre 20 y 400 es: ", producto

FinAlgoritmo
