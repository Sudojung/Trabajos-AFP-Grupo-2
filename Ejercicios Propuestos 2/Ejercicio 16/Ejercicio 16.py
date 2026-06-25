NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

# Validación de entrada
while True:

    n = int(input("Ingrese un número entero positivo: "))

    if n <= 0:
        print("Error: Debe ingresar un número positivo.")
    else:
        break

cantidad = 0

# Contamos la cantidad de dígitos
while n > 0:

    cantidad += 1
    n //= 10

print(f"El número tiene {cantidad} dígito(s).")
