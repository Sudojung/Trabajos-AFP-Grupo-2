Funcion puntos <- puntosCalidad(promedio)
    Definir puntos Como Entero
    
    // Le quitamos los decimales al promedio para que encaje en los rangos 
    promedio <- trunc(promedio)
    
    Si promedio >= 90 Y promedio <= 100 Entonces
        puntos <- 4
    Fin Si
    
    Si promedio >= 80 Y promedio <= 89 Entonces
        puntos <- 3
    Fin Si
    
    Si promedio >= 70 Y promedio <= 79 Entonces
        puntos <- 2
    Fin Si
    
    Si promedio >= 60 Y promedio <= 69 Entonces
        puntos <- 1
    Fin Si
    
    Si promedio < 60 Entonces
        puntos <- 0
    Fin Si
FinFuncion

Algoritmo EjercicioPuntosCalidadDinamico
    Definir i, resultado Como Entero
    Definir nota, suma, promedioEstudiante Como Real
    
    suma <- 0
    
    Escribir "--- Calculadora de Puntos de Calidad ---"
    
    //  para pedir las 4 notas
    Para i <- 1 Hasta 4 Hacer
        Escribir "Ingrese la nota ", i, " (0 - 100):"
        Leer nota
        suma <- suma + nota
    Fin Para
    
    // Calculamos el promedio
    promedioEstudiante <- suma / 4
    
    // Aplicacion de la función
    resultado <- puntosCalidad(promedioEstudiante)
    
    Escribir "----------------------"
    Escribir "Promedio calculado: ", promedioEstudiante
    Escribir "Puntos de calidad: ", resultado
FinAlgoritmo
