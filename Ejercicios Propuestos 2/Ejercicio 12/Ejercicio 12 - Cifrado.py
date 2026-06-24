NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

# Solicitamos un número de 4 dígitos
numero = input("Ingrese un número de 4 dígitos: ")

# Extraemos y transformamos cada dígito
d1 = (int(numero[0]) + 7) % 10
d2 = (int(numero[1]) + 7) % 10
d3 = (int(numero[2]) + 7) % 10
d4 = (int(numero[3]) + 7) % 10

# Intercambiamos posiciones
cifrado = f"{d3}{d4}{d1}{d2}"

# Mostramos el resultado final
print(f"Número cifrado: {cifrado}")