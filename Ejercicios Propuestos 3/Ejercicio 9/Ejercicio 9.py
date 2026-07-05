NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

# Solicitar el tamaño de las matrices
n = int(input("Ingrese el tamaño (n) de las matrices cuadradas: "))

# Crear las matrices A, B y la matriz resultado
matrizA = [[0 for c in range(n)] for f in range(n)]
matrizB = [[0 for c in range(n)] for f in range(n)]
resultado = [[0 for c in range(n)] for f in range(n)]

# Leer los elementos de la matriz A
print("\nELEMENTOS DE LA MATRIZ (A)")
for f in range(n):
    for c in range(n):
        matrizA[f][c] = int(input(f"Elemento A[{f}][{c}]: "))

# Leer los elementos de la matriz B
print("\nELEMENTOS DE LA MATRIZ (B)")
for f in range(n):
    for c in range(n):
        matrizB[f][c] = int(input(f"Elemento B[{f}][{c}]: "))

# Multiplicación de matrices
for f in range(n):
    for c in range(n):
        resultado[f][c] = 0

        # Multiplicar la fila de A por la columna de B
        for k in range(n):
            resultado[f][c] += matrizA[f][k] * matrizB[k][c]

# Mostrar la matriz A
print("\nMATRIZ (A):")
for f in range(n):
    for c in range(n):
        print(matrizA[f][c], end="  ")
    print()

# Mostrar la matriz B
print("\nMATRIZ (B):")
for f in range(n):
    for c in range(n):
        print(matrizB[f][c], end="  ")
    print()

# Mostrar la matriz resultado
print("\nMATRIZ (A × B):")
for f in range(n):
    for c in range(n):
        print(resultado[f][c], end="  ")
    print()
