Algoritmo CuadradosCubosYRaices

    Definir limite_P, numero_actual, cuadrado, cubo Como Entero
    Definir raiz_cuadrada Como Real

    Escribir "Ingrese la cantidad de números a calcular (valor de P): "
    Leer limite_P

    Si limite_P > 0 Entonces

        Escribir "Num | Cuadrado | Cubo | Raíz Cuadrada"
        Escribir "-------------------------------------"

        Para numero_actual <- 1 Hasta limite_P Hacer

            cuadrado <- numero_actual * numero_actual
            cubo <- numero_actual * numero_actual * numero_actual
            raiz_cuadrada <- RC(numero_actual)

            Escribir numero_actual, " | ", cuadrado, " | ", cubo, " | ", raiz_cuadrada

        FinPara

    Sino

        Escribir "Error: La cantidad P debe ser un número mayor a cero."

    FinSi

FinAlgoritmo
