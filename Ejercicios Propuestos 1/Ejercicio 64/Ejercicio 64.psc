Algoritmo Jefaturas_Policia

    Definir jefatura, num_presos, preso, num_pistas, pista Como Entero
    Definir tipo_pista Como Caracter
    Definir puntos_preso, cont_A, cont_B, cont_C, total_pistas Como Entero
    Definir pct_A, pct_B, pct_C Como Real

    Para jefatura <- 1 Hasta 3 Hacer

        Escribir "=================================================="
        Escribir "PROCESANDO JEFATURA DE POLICIA NRO ", jefatura
        Escribir "=================================================="

        cont_A <- 0
        cont_B <- 0
        cont_C <- 0
        total_pistas <- 0

        Escribir "Ingrese la cantidad de presos en esta jefatura: "
        Leer num_presos

        Para preso <- 1 Hasta num_presos Hacer

            Escribir "------------------------------------------------"
            Escribir "Datos del Preso Nro ", preso, ":"

            puntos_preso <- 0

            Escribir "Cuantas pistas en contra tiene el preso?: "
            Leer num_pistas

            Para pista <- 1 Hasta num_pistas Hacer

                Repetir
                    Escribir "Ingrese el tipo de pista ", pista, " (A / B / C): "
                    Leer tipo_pista
                    tipo_pista <- Mayusculas(tipo_pista)

                    Si tipo_pista <> "A" Y tipo_pista <> "B" Y tipo_pista <> "C" Entonces
                        Escribir "[Error] Tipo invalido. Intente de nuevo con A, B o C."
                    FinSi
                Hasta Que tipo_pista = "A" O tipo_pista = "B" O tipo_pista = "C"

                Si tipo_pista = "A" Entonces
                    puntos_preso <- puntos_preso + 20
                    cont_A <- cont_A + 1
                Sino
                    Si tipo_pista = "B" Entonces
                        puntos_preso <- puntos_preso + 15
                        cont_B <- cont_B + 1
                    Sino
                        puntos_preso <- puntos_preso + 30
                        cont_C <- cont_C + 1
                    FinSi
                FinSi

                total_pistas <- total_pistas + 1

            FinPara

            Escribir "Puntuacion Total Obtenida: ", puntos_preso
            Escribir "ESTATUS: " Sin Saltar

            Si puntos_preso > 85 Entonces
                Escribir "CULPABLE"
            Sino
                Si puntos_preso > 65 Entonces
                    Escribir "SOSPECHOSO DE ALTO RIESGO"
                Sino
                    Escribir "SOSPECHOSO DE BAJO RIESGO"
                FinSi
            FinSi

        FinPara

        Escribir ""
        Escribir ">>> REPORTE JEFATURA NRO ", jefatura, " <<<"
        Escribir "Cuantos presos hay: ", num_presos

        Si total_pistas > 0 Entonces

            pct_A <- (cont_A / total_pistas) * 100
            pct_B <- (cont_B / total_pistas) * 100
            pct_C <- (cont_C / total_pistas) * 100

            Escribir "Porcentaje de cada tipo de pista:"
            Escribir "   - Tipo A: ", pct_A, "%"
            Escribir "   - Tipo B: ", pct_B, "%"
            Escribir "   - Tipo C: ", pct_C, "%"

            Escribir "Tipo de pista mas frecuente: " Sin Saltar

            Si cont_A >= cont_B Y cont_A >= cont_C Entonces
                Escribir "Tipo A"
            Sino
                Si cont_B >= cont_A Y cont_B >= cont_C Entonces
                    Escribir "Tipo B"
                Sino
                    Escribir "Tipo C"
                FinSi
            FinSi

        Sino

            Escribir "No se registraron pistas bajo esta jefatura."

        FinSi

        Escribir ""

    FinPara

FinAlgoritmo
