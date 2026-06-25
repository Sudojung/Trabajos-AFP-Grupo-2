NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

# Diferencia entre la media armónica y la media geométrica

M = int(input("Ingrese la cantidad de números a evaluar (M): "))

if M <= 0:
    print("Debe ingresar una cantidad mayor a 0.")
else:
    suma_inversas = 0.0
    producto = 1.0
    error = False

    for i in range(1, M + 1):
        x = int(input(f"Ingrese el número {i}: "))

        # Solo se permiten números positivos
        if x <= 0:
            print("Error: Solo se admiten números enteros POSITIVOS (mayores a 0).")
            error = True
            break
        else:
            suma_inversas += 1.0 / x
            producto *= x

    # Si no hubo errores
    if not error:
        armonica = M / suma_inversas
        geometrica = producto ** (1.0 / M)

        print(f"Media Armónica: {armonica:.6f}")
        print(f"Media Geométrica: {geometrica:.6f}")
        print(f"Diferencia (Valor Absoluto): {abs(armonica - geometrica):.6f}")