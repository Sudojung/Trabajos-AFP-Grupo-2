```pseint id="m8s4qp"
Algoritmo Encuestados

    Definir totalPersonas, totalAceptanA, totalAceptanB Como Entero
    Definir aceptanAmbos, aceptanSoloA, aceptanSoloB, noAceptanNinguno Como Entero
    Definir respuestaA, respuestaB Como Entero
    Definir i Como Entero    // Variable contadora para el ciclo

    totalAceptanA <- 0
    totalAceptanB <- 0
    aceptanAmbos <- 0
    aceptanSoloA <- 0
    aceptanSoloB <- 0
    noAceptanNinguno <- 0

    Escribir "Ingrese la cantidad total de personas a encuestar:"
    Leer totalPersonas

    Para i <- 1 Hasta totalPersonas Con Paso 1 Hacer

        Escribir "--- Encuesta N° ", i, " ---"

        Escribir "¿Acepta el producto A? (1=Sí, 0=No): "
        Leer respuestaA

        Escribir "¿Acepta el producto B? (1=Sí, 0=No): "
        Leer respuestaB

        Si respuestaA = 1 Entonces
            totalAceptanA <- totalAceptanA + 1
        FinSi

        Si respuestaB = 1 Entonces
            totalAceptanB <- totalAceptanB + 1
        FinSi

        Si respuestaA = 1 Y respuestaB = 1 Entonces
            aceptanAmbos <- aceptanAmbos + 1
        FinSi

        Si respuestaA = 1 Y respuestaB = 0 Entonces
            aceptanSoloA <- aceptanSoloA + 1
        FinSi

        Si respuestaA = 0 Y respuestaB = 1 Entonces
            aceptanSoloB <- aceptanSoloB + 1
        FinSi

        Si respuestaA = 0 Y respuestaB = 0 Entonces
            noAceptanNinguno <- noAceptanNinguno + 1
        FinSi

    FinPara

    // Reporte Final de Resultados

    Si totalPersonas > 0 Entonces

        Escribir "----------------------------------------"
        Escribir "Total de personas encuestadas: ", totalPersonas

        Escribir "% Aceptan A: ", (totalAceptanA / totalPersonas) * 100, "%"
        Escribir "% Aceptan B: ", (totalAceptanB / totalPersonas) * 100, "%"

        Escribir "% Aceptan Ambos: ", (aceptanAmbos / totalPersonas) * 100, "%"
        Escribir "% Aceptan Solo A: ", (aceptanSoloA / totalPersonas) * 100, "%"
        Escribir "% Aceptan Solo B: ", (aceptanSoloB / totalPersonas) * 100, "%"
        Escribir "% No aceptan ninguno: ", (noAceptanNinguno / totalPersonas) * 100, "%"

        Escribir "----------------------------------------"

    Sino

        Escribir "No se registraron encuestas."

    FinSi

FinAlgoritmo
```
