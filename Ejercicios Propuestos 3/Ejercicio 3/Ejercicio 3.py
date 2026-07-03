NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

# Solicitar el tamaño de la matriz cuadrada
n = int(input("Ingrese el tamaño (n) de la matriz cuadrada: "))

# Crear una matriz de n x n inicializada con ceros
matriz = [[0 for c in range(n)] for f in range(n)]

# Generar la matriz identidad
for f in range(n):
    for c in range(n):
        # Si la fila es igual a la columna, pertenece a la diagonal principal
        if f == c:
            matriz[f][c] = 1
        else:
            # El resto de posiciones contienen 0
            matriz[f][c] = 0

# Mostrar la matriz identidad
print("\nMatriz identidad:")

for f in range(n):
    for c in range(n):
        print(matriz[f][c], end="  ")
    print()  # Salto de línea después de cada fila
