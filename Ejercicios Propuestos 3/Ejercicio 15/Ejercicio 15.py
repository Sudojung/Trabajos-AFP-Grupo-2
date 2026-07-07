NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

n = int(input("Ingrese el tamaño (n) de la matriz cuadrada: "))

matriz = []

for f in range(n):
    fila = []
    for c in range(n):
        valor = int(input(f"Valor para la posición [{f}][{c}]: "))
        fila.append(valor)
    matriz.append(fila)

es_simetrica = True

for f in range(n):
    for c in range(n):
        if matriz[f][c] != matriz[c][f]:
            es_simetrica = False

print("MATRIZ:")
for f in range(n):
    for c in range(n):
        print(matriz[f][c], end="  ")
    print()

print("--------------------------------------------------")

if es_simetrica:
    print("La matriz es SIMÉTRICA.")
else:
    print("La matriz NO es simétrica.")
