NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

# Solicitamos un número positivo
N = int(input("Ingrese un número positivo: "))

# Creamos un contador para los dígitos
contador = 0

# Recorremos el número mientras sea mayor que cero
while N > 0:

    # Incrementamos el contador de dígitos
    contador += 1

    # Eliminamos el último dígito del número
    N = N // 10

# Mostramos la cantidad de dígitos obtenida
print(f"El número tiene {contador} dígitos.")