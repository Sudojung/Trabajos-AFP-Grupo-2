NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

# Solicitamos el número cifrado
numero = input("Ingrese el número cifrado: ")

# Deshacemos los intercambios realizados en el cifrado
d1 = int(numero[2])
d2 = int(numero[3])
d3 = int(numero[0])
d4 = int(numero[1])

# Recuperamos los dígitos originales
d1 = (d1 + 3) % 10
d2 = (d2 + 3) % 10
d3 = (d3 + 3) % 10
d4 = (d4 + 3) % 10

# Formamos el número original
original = f"{d1}{d2}{d3}{d4}"

# Mostramos el resultado
print(f"Número original: {original}")