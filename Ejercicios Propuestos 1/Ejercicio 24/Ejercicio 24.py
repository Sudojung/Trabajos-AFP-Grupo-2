NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

# La escuela Académica Profesional de Ingeniería de Sistemas quiere realizar los algoritmos necesarios para realizar la evaluación y selección de un conjunto de mil postulantes para el ingreso de admisión para el Programa de Graduación de Ingeniería de Sistemas, considerando los siguientes parámetros:
# ♦ Numero de vacantes: 150.
# ♦ Número de preguntas es 100. 
# ♦ La nota mínima de ingreso es 120 puntos. 
# ♦ El examen consta de tres partes: Las 40 primeras preguntas de Razonamiento matemático y verbal (2 puntos correcto, -1 si es incorrecto), 30 preguntas de conocimiento en ciencias (3 puntos correcto, - 1.5 si es incorrecto), y 30 preguntas de conocimiento en letras (1 punto correcto, -0.5 si es incorrecto).
# a) Calcule la nota final del postulante y determine si ingreso o no ingreso el postulante. 
# b) Calcule la media aritmética de las notas de todos los postulantes. 
# c) Calcule la varianza de las notas de los postulantes. 
# d) Calcule la nota mínima y máxima de los ingresantes.

# Solicitamos la cantidad total de postulantes
num_postulantes = int(input("Ingrese la cantidad total de postulantes a evaluar: "))

# Validamos que la cantidad de postulantes sea mayor que cero
while num_postulantes <= 0:
    num_postulantes = int(input("Error: La cantidad debe ser mayor a 0. Intente de nuevo: "))

# Inicializamos variables acumuladoras para cálculos estadísticos
suma_notas = 0.0
suma_notas_cuadrado = 0.0

# Contador de ingresantes
cant_ingresantes = 0

# Variable para verificar si existe al menos un ingresante
tiene_ingresantes = False

# Variables para almacenar la nota mínima y máxima de los ingresantes
nota_min_ing = 999.0
nota_max_ing = -999.0

# Procesamos cada postulante
for i in range(1, num_postulantes + 1):

    print("==================================================")
    print(f"PROCESANDO POSTULANTE Nº {i}")
    print("==================================================")

    # Parte 1: Razonamiento Matemático y Verbal
    print("Parte 1: Razonamiento Mat. y Verbal (Máx 40)")
    corr_rmv = int(input(" - Cantidad de respuestas CORRECTAS: "))
    inc_rmv = int(input(" - Cantidad de respuestas INCORRECTAS: "))

    # Parte 2: Conocimiento en Ciencias
    print("Parte 2: Conocimiento en Ciencias (Máx 30)")
    corr_cie = int(input(" - Cantidad de respuestas CORRECTAS: "))
    inc_cie = int(input(" - Cantidad de respuestas INCORRECTAS: "))

    # Parte 3: Conocimiento en Letras
    print("Parte 3: Conocimiento en Letras (Máx 30)")
    corr_let = int(input(" - Cantidad de respuestas CORRECTAS: "))
    inc_let = int(input(" - Cantidad de respuestas INCORRECTAS: "))

    # Calculamos la nota final del postulante
    nota_final = (
        (corr_rmv * 2) - (inc_rmv * 1)
        + (corr_cie * 3) - (inc_cie * 1.5)
        + (corr_let * 1) - (inc_let * 0.5)
    )

    print("--------------------------------------------------")
    print(f"-> NOTA FINAL: {nota_final}")

    # Determinamos si el postulante ingresa
    if nota_final >= 120 and cant_ingresantes < 150:

        print("-> ESTATUS: ¡INGRESÓ EL POSTULANTE!")

        # Incrementamos el número de ingresantes
        cant_ingresantes += 1

        # Inicializamos las notas mínima y máxima
        if not tiene_ingresantes:
            nota_min_ing = nota_final
            nota_max_ing = nota_final
            tiene_ingresantes = True

        else:

            # Actualizamos la nota mínima
            if nota_final < nota_min_ing:
                nota_min_ing = nota_final

            # Actualizamos la nota máxima
            if nota_final > nota_max_ing:
                nota_max_ing = nota_final

    elif nota_final >= 120 and cant_ingresantes >= 150:

        print("-> ESTATUS: NO INGRESÓ (Alcanzó puntaje pero no hay vacantes disponibles)")

    else:

        print("-> ESTATUS: NO INGRESÓ (Puntaje menor al mínimo de 120)")

    # Acumulamos la suma de notas
    suma_notas += nota_final

    # Acumulamos la suma de los cuadrados de las notas
    suma_notas_cuadrado += (nota_final * nota_final)

    print("")

# Mostramos el reporte general
print("==================================================")
print(" REPORTE GENERAL DE ADMISIÓN ")
print("==================================================")

# Calculamos la media aritmética
media = suma_notas / num_postulantes

print(f"b) Media aritmética de todos los postulantes: {media}")

# Calculamos la varianza
varianza = (suma_notas_cuadrado / num_postulantes) - (media * media)

print(f"c) Varianza de las notas de los postulantes: {varianza}")

# Mostramos estadísticas de los ingresantes
if tiene_ingresantes:

    print("d) Reporte de Ingresantes:")
    print(f"   - Total de ingresantes: {cant_ingresantes}")
    print(f"   - Nota MÍNIMA entre ingresantes: {nota_min_ing}")
    print(f"   - Nota MÁXIMA entre ingresantes: {nota_max_ing}")

else:

    print("d) Reporte de Ingresantes: Ningún postulante logró ingresar.")

print("==================================================")

# OBSERVACIÓN:
# Esta versión determina el ingreso según el orden de procesamiento de los postulantes y la disponibilidad de vacantes. Para una selección real de admisión debería almacenarse la nota de todos los postulantes y luego ordenar las calificaciones para elegir a los 150 mejores puntajes.
