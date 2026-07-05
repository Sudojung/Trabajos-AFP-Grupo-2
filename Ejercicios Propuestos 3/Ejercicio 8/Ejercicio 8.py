NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

# Solicitar el número de filas y columnas
n = int(input("Ingrese el número de filas (n): "))
m = int(input("Ingrese el número de columnas (m): "))

# Crear la matriz original y la matriz transpuesta
elemento = [[0 for c in range(m)] for f in range(n)]
transpuesta = [[0 for c in range(n)] for f in range(m)]

# Leer los elementos de la matriz
for f in range(n):
    for c in range(m):
        elemento[f][c] = int(input(f"Valor para la posición [{f}][{c}]: "))

# Mostrar la matriz original
print("\nMATRIZ:")
for f in range(n):
    for c in range(m):
        print(elemento[f][c], end="  ")
    print()

# Calcular la matriz transpuesta
for f in range(n):
    for c in range(m):
        transpuesta[c][f] = elemento[f][c]

# Mostrar la matriz transpuesta
print("\nMATRIZ TRANSPUESTA:")
for f in range(m):
    for c in range(n):
        print(transpuesta[f][c], end="  ")
    print()
