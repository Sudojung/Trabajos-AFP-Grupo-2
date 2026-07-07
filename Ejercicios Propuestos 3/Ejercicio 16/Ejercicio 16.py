NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

# Función para realizar la partición del vector
def particion(vector, inicio, fin):

    pivote = vector[fin]
    i = inicio - 1

    for j in range(inicio, fin):

        if vector[j] <= pivote:
            i += 1

            # Intercambiar elementos
            vector[i], vector[j] = vector[j], vector[i]

    # Colocar el pivote en su posición correcta
    vector[i + 1], vector[fin] = vector[fin], vector[i + 1]

    return i + 1


# Función recursiva QuickSort
def quick_sort(vector, inicio, fin):

    if inicio < fin:

        pivote = particion(vector, inicio, fin)

        quick_sort(vector, inicio, pivote - 1)
        quick_sort(vector, pivote + 1, fin)


# Programa principal

n = int(input("Ingrese la cantidad de elementos: "))

vector = []

for i in range(n):
    numero = int(input(f"Elemento {i}: "))
    vector.append(numero)

# Ordenar el vector
quick_sort(vector, 0, n - 1)

# Mostrar el resultado
print("\nVector ordenado:")

for numero in vector:
    print(numero, end=" ")

print()
