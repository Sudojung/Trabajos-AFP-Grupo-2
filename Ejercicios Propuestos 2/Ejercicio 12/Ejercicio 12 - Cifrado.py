NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

# Solicitamos un número de 4 dígitos
numero = input("Ingrese un número de 4 dígitos: ")

# Arreglo para almacenar los dígitos cifrados
digitos = [0] * 4

# Convertimos y ciframos cada dígito
for i in range(4):
    digitos[i] = (int(numero[i]) + 7) % 10

# Intercambiamos posiciones
cifrado = f"{digitos[2]}{digitos[3]}{digitos[0]}{digitos[1]}"

# Mostramos el resultado
print(f"Número cifrado: {cifrado}")
