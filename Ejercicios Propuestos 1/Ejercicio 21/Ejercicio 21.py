NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

# Elabore un programa que imprima el triángulo de Floyd hasta un valor dado. El triángulo contiene los números naturales correlativos, uno en la primera línea, dos en la segunda, etc.; es decir, en la fila n-ésima aparecen n valores. Ejemplo:
# 1
# 1 2
# 1 2 3
# 1 2 3 4
# 1 2 3 4 5

# Solicitamos la cantidad de filas
n = int(input("Ingresa el número de filas: "))

# Recorremos las filas del triángulo
for i in range(1, n + 1):

    # Imprimimos los números desde 1 hasta i
    for j in range(1, i + 1):
        print(j, end=" ")

    # Pasamos a la siguiente línea
    print()
