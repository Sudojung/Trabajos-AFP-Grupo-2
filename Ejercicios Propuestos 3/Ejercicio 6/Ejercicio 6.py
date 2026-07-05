NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

# Solicitar la cantidad de caracteres
n = int(input("Ingrese la cantidad de caracteres: "))

# Crear una lista vacía para almacenar los caracteres
cadena = []

# Leer los caracteres uno por uno
for i in range(n):
    caracter = input(f"Carácter para la posición {i}: ")
    cadena.append(caracter)

# Bubble Sort
for i in range(n - 1):
    for j in range(n - i - 1):
        # Comparar los caracteres consecutivos
        if cadena[j] > cadena[j + 1]:
            # Intercambiar los caracteres
            aux = cadena[j]
            cadena[j] = cadena[j + 1]
            cadena[j + 1] = aux

# Mostrar la cadena ordenada
print("Cadena ordenada:")

for caracter in cadena:
    print(caracter, end="")

print()  # Salto de línea
