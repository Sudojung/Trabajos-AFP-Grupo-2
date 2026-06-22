NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

# Escribir un algoritmo para un cajero automático que calcule el número óptimo de billetes de 20, 10, 5 y 1 para una cantidad entera de dinero en euros.

# Solicitamos la cantidad de dinero a retirar
cantidad_euros = int(input("Ingrese la cantidad entera de euros a retirar: "))

# Verificamos que la cantidad sea válida
if cantidad_euros > 0:

    # Calculamos la cantidad de billetes de 20 euros
    billetes_20 = cantidad_euros // 20

    # Calculamos el dinero restante
    resto_euros = cantidad_euros % 20

    # Calculamos la cantidad de billetes de 10 euros
    billetes_10 = resto_euros // 10

    # Actualizamos el dinero restante
    resto_euros = resto_euros % 10

    # Calculamos la cantidad de billetes de 5 euros
    billetes_5 = resto_euros // 5

    # Actualizamos el dinero restante
    resto_euros = resto_euros % 5

    # Los euros restantes se cubren con billetes de 1 euro
    billetes_1 = resto_euros

    # Mostramos el desglose obtenido
    print("--- DESGLOSE ÓPTIMO DE BILLETES ---")
    print(f"Billetes de 20 euros: {billetes_20}")
    print(f"Billetes de 10 euros: {billetes_10}")
    print(f"Billetes de 5 euros: {billetes_5}")
    print(f"Billetes de 1 euro: {billetes_1}")

else:
    print("Error: La cantidad ingresada debe ser mayor a cero.")