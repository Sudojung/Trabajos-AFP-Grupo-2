NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

# Pirámide de números

n = int(input("Ingrese un número entero positivo n: "))

# Validación
if n <= 0:
    print("Error: El número debe ser positivo.")
else:
    for i in range(1, n + 1):

        # Imprimir espacios
        for j in range(n - i):
            print("  ", end="")

        # Lado izquierdo de la pirámide
        for j in range(i):
            val = (i + j) % 10
            print(val, end=" ")

        # Lado derecho de la pirámide
        for j in range(i - 2, -1, -1):
            val = (i + j) % 10
            print(val, end=" ")

        # Salto de línea
        print()