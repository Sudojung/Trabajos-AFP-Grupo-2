NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

def crear_matriz_dinamica(filas, columnas):
    nueva_matriz = []

    for f in range(filas):
        fila = []
        for c in range(columnas):
            fila.append(0)
        nueva_matriz.append(fila)

    return nueva_matriz


def liberar_matriz_dinamica(matriz):
    del matriz


# Programa principal
n_filas = int(input("Ingrese el número de filas de la matriz: "))
n_columnas = int(input("Ingrese el número de columnas de la matriz: "))

mi_matriz = crear_matriz_dinamica(n_filas, n_columnas)

for f in range(n_filas):
    for c in range(n_columnas):
        mi_matriz[f][c] = int(input(f"Ingrese valor para [{f}][{c}]: "))

print("--------------------------------------------------")
print("CONTENIDO DE LA MATRIZ DINÁMICA:")

for f in range(n_filas):
    for c in range(n_columnas):
        print(mi_matriz[f][c], end=" ")
    print()

print("--------------------------------------------------")

liberar_matriz_dinamica(mi_matriz)
print("Memoria dinámica liberada correctamente.")
