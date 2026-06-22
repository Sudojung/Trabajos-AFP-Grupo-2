NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

# En una ciudad existen tres jefaturas de policía. En cada una de ellas procesan los presos según el tipo de pista en contra que tengan. Las pistas se clasifican en:
# +---------------+------------+
# | Tipo de pista | Puntuación |
# +---------------+------------+
# | A             |     20     |
# | B             |     15     |
# | C             |     30     |
# +---------------+------------+
# Un preso tiene M pistas en contra, las cuales pueden ser de cualquier tipo. Se desea un programa que procese los n presos de cada jefatura y produzca la siguiente información:
# Para cada jefatura:
# ⮚ Estatus de cada preso de acuerdo con la siguiente tabla:
# +----------------------+------------------------------+
# |   Puntuación Total   |           Estatus            |
# +----------------------+------------------------------+
# | Más de 85            | Culpable                     |
# | Más de 65 menos de 85| Sospechoso de alto riesgo    |
# | Menos de 65          | Sospechoso de bajo riesgo    |
# +----------------------+------------------------------+
# ⮚ Cuántos presos hay. 
# ⮚ Cuál es el tipo de pista más frecuente. 
# ⮚ Porcentaje de cada tipo de pista.
# Para poder realizar este programa Ud. Primero debe realizar: El análisis del problema El Algoritmo.

NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

# Programa que procesa presos de tres jefaturas de policía
# según el tipo de pistas en contra.

for jefatura in range(1, 4):

    print(f"\n===== JEFATURA {jefatura} =====")

    # Cantidad de presos de la jefatura
    n = int(input("Ingrese cantidad de presos: "))

    # Contadores de pistas por jefatura
    cont_A = 0
    cont_B = 0
    cont_C = 0

    # Procesamos cada preso
    for i in range(1, n + 1):

        print(f"\n--- Preso {i} ---")

        # Cantidad de pistas del preso
        m = int(input("Cantidad de pistas: "))
        total = 0

        # Procesamos cada pista
        for k in range(m):

            pista = input("Ingrese tipo de pista (A/B/C): ").upper()

            if pista == "A":
                total += 20
                cont_A += 1

            elif pista == "B":
                total += 15
                cont_B += 1

            elif pista == "C":
                total += 30
                cont_C += 1

            else:
                print("Tipo inválido")

        # Clasificación del preso según su puntuación
        if total > 85:
            status = "Culpable"

        elif total > 65:
            status = "Sospechoso de alto riesgo"

        else:
            status = "Sospechoso de bajo riesgo"

        print("Puntuación total:", total)
        print("Estado:", status)

    # Calculamos total de pistas de la jefatura
    total_pistas = cont_A + cont_B + cont_C

    print(f"\n===== RESULTADOS JEFATURA {jefatura} =====")
    print("Cantidad de presos:", n)

    # Determinamos el tipo de pista más frecuente
    if cont_A > cont_B and cont_A > cont_C:
        frecuente = "A"

    elif cont_B > cont_A and cont_B > cont_C:
        frecuente = "B"

    elif cont_C > cont_A and cont_C > cont_B:
        frecuente = "C"

    else:
        frecuente = "Empate"

    print("Tipo de pista más frecuente:", frecuente)

    # Calculamos porcentajes
    if total_pistas > 0:
        print("Porcentaje A:", cont_A / total_pistas * 100, "%")
        print("Porcentaje B:", cont_B / total_pistas * 100, "%")
        print("Porcentaje C:", cont_C / total_pistas * 100, "%")
    else:
        print("No se registraron pistas.")
        
# CORRECCIONES REALIZADAS RESPECTO A LA VERSIÓN ANTERIOR (EL QUE SE PUSO EN EL PDF ENTREGADO):
# - Se agregó el procesamiento de las tres jefaturas de policía mediante un ciclo principal.
# - Los contadores de pistas (A, B y C) ahora se reinician para cada jefatura.
# - Los resultados se muestran de forma independiente para cada jefatura.
# - Se calcula la cantidad de presos por cada jefatura.
# - Se determina el tipo de pista más frecuente en cada jefatura.
# - Se calcula el porcentaje de pistas A, B y C para cada jefatura.
# - Se mantiene la clasificación de los presos según su puntuación total:
#   * Más de 85 puntos: Culpable.
#   * Más de 65 puntos: Sospechoso de alto riesgo.
#   * 65 puntos o menos: Sospechoso de bajo riesgo.
# - Se agregó una validación para el caso en que no existan pistas registradas.
# - Se mejoró la organización de la salida mostrando resultados por jefatura.