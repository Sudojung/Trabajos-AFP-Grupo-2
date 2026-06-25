import random

NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

# El programa elige un número al azar entre 1 y 10 automáticamente
max_int = random.randint(1, 10)
intentos = 0

print("¡El sistema ha asignado el límite de intentos!")
print(f"Para este programa tienes un máximo de: {max_int} intentos.")
print("--------------------------------------------------")

dia1 = int(input("Ingrese el DÍA de la primera fecha (Escriba 0 para salir): "))

while dia1 != 0 and intentos < max_int:

    mes1 = int(input("Ingrese el MES de la primera fecha: "))
    año1 = int(input("Ingrese el AÑO de la primera fecha: "))

    print("--- Segunda Fecha ---")
    dia2 = int(input("Ingrese el DÍA de la segunda fecha: "))
    mes2 = int(input("Ingrese el MES de la segunda fecha: "))
    año2 = int(input("Ingrese el AÑO de la segunda fecha: "))

    print("--------------------------------------------------")

    # Comparación de las fechas
    if año1 < año2:
        print(f"-> La primera fecha ({dia1}/{mes1}/{año1}) es anterior.")

    else:
        if año1 > año2:
            print(f"-> La segunda fecha ({dia2}/{mes2}/{año2}) es anterior.")

        else:
            if mes1 < mes2:
                print("-> La primera fecha es anterior.")

            else:
                if mes1 > mes2:
                    print("-> La segunda fecha es anterior.")

                else:
                    if dia1 < dia2:
                        print("-> La primera fecha es anterior.")

                    else:
                        if dia1 > dia2:
                            print("-> La segunda fecha es anterior.")

                        else:
                            print("-> Ambas fechas son exactamente iguales.")

    print("--------------------------------------------------")

    intentos += 1

    # Solo pide otra fecha si no se ha alcanzado el límite aleatorio
    if intentos < max_int:
        dia1 = int(input("Ingrese el DÍA de la siguiente primera fecha (Escriba 0 para salir): "))

print("Programa finalizado exitosamente.")