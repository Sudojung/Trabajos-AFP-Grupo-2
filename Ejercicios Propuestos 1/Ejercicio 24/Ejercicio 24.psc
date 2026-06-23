Algoritmo AdmisionPostulantes

    Definir num_postulantes, i Como Entero
    Definir corr_rmv, inc_rmv, corr_cie, inc_cie, corr_let, inc_let Como Entero
    Definir cant_ingresantes Como Entero
    Definir nota_final, suma_notas, suma_notas_cuadrado Como Real
    Definir media, varianza, nota_min_ing, nota_max_ing Como Real
    Definir tiene_ingresantes Como Logico

    Escribir "Ingrese la cantidad total de postulantes a evaluar: " Sin Saltar
    Leer num_postulantes

    Mientras num_postulantes <= 0 Hacer
        Escribir "Error: La cantidad debe ser mayor a 0. Intente de nuevo: " Sin Saltar
        Leer num_postulantes
    FinMientras

    suma_notas <- 0
    suma_notas_cuadrado <- 0
    cant_ingresantes <- 0
    tiene_ingresantes <- Falso
    nota_min_ing <- 999
    nota_max_ing <- -999

    Para i <- 1 Hasta num_postulantes Con Paso 1 Hacer

        Escribir "==============================================="
        Escribir "PROCESANDO POSTULANTE N° ", i
        Escribir "==============================================="

        Escribir "Parte 1: Razonamiento Mat. y Verbal (Máx 40):"
        Escribir " - Cantidad de respuestas CORRECTAS: " Sin Saltar
        Leer corr_rmv
        Escribir " - Cantidad de respuestas INCORRECTAS: " Sin Saltar
        Leer inc_rmv

        Escribir "Parte 2: Conocimiento en Ciencias (Máx 30):"
        Escribir " - Cantidad de respuestas CORRECTAS: " Sin Saltar
        Leer corr_cie
        Escribir " - Cantidad de respuestas INCORRECTAS: " Sin Saltar
        Leer inc_cie

        Escribir "Parte 3: Conocimiento en Letras (Máx 30):"
        Escribir " - Cantidad de respuestas CORRECTAS: " Sin Saltar
        Leer corr_let
        Escribir " - Cantidad de respuestas INCORRECTAS: " Sin Saltar
        Leer inc_let

        nota_final <- (corr_rmv * 2) - (inc_rmv * 1) + (corr_cie * 3) - (inc_cie * 1.5) + (corr_let * 1) - (inc_let * 0.5)

        Escribir "-----------------------------------------------"
        Escribir "=> NOTA FINAL: ", nota_final

        Si nota_final >= 120 Y cant_ingresantes < 150 Entonces

            Escribir "=> ESTATUS: INGRESÓ EL POSTULANTE"
            cant_ingresantes <- cant_ingresantes + 1

            Si tiene_ingresantes = Falso Entonces
                nota_min_ing <- nota_final
                nota_max_ing <- nota_final
                tiene_ingresantes <- Verdadero
            Sino
                Si nota_final < nota_min_ing Entonces
                    nota_min_ing <- nota_final
                FinSi

                Si nota_final > nota_max_ing Entonces
                    nota_max_ing <- nota_final
                FinSi
            FinSi

        Sino

            Si nota_final >= 120 Y cant_ingresantes >= 150 Entonces
                Escribir "=> ESTATUS: NO INGRESÓ (Alcanzó puntaje pero no hay vacantes disponibles)"
            Sino
                Escribir "=> ESTATUS: NO INGRESÓ (Puntaje menor al mínimo de 120)"
            FinSi

        FinSi

        suma_notas <- suma_notas + nota_final
        suma_notas_cuadrado <- suma_notas_cuadrado + (nota_final * nota_final)

        Escribir ""

    FinPara

    Escribir "==============================================="
    Escribir "           REPORTE GENERAL DE ADMISIÓN"
    Escribir "==============================================="

    media <- suma_notas / num_postulantes
    Escribir "b) Media aritmética de todos los postulantes: ", media

    varianza <- (suma_notas_cuadrado / num_postulantes) - (media * media)
    Escribir "c) Varianza de las notas de los postulantes: ", varianza

    Si tiene_ingresantes = Verdadero Entonces
        Escribir "d) Reporte de Ingresantes:"
        Escribir " - Total de vacantes ocupadas: ", cant_ingresantes
        Escribir " - Nota MÍNIMA entre ingresantes: ", nota_min_ing
        Escribir " - Nota MÁXIMA entre ingresantes: ", nota_max_ing
    Sino
        Escribir "d) Reporte de Ingresantes: Ningún postulante logró ingresar."
    FinSi

    Escribir "==============================================="

FinAlgoritmo
