NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

def bubble_sort(vector):
    n = len(vector)

    for i in range(n - 1):
        for j in range(n - i - 1):
            if vector[j] > vector[j + 1]:
                aux = vector[j]
                vector[j] = vector[j + 1]
                vector[j + 1] = aux


def merge(vector, izquierda, medio, derecha):
    izquierda_vector = vector[izquierda:medio + 1]
    derecha_vector = vector[medio + 1:derecha + 1]

    i = 0
    j = 0
    k = izquierda

    while i < len(izquierda_vector) and j < len(derecha_vector):
        if izquierda_vector[i] <= derecha_vector[j]:
            vector[k] = izquierda_vector[i]
            i += 1
        else:
            vector[k] = derecha_vector[j]
            j += 1
        k += 1

    while i < len(izquierda_vector):
        vector[k] = izquierda_vector[i]
        i += 1
        k += 1

    while j < len(derecha_vector):
        vector[k] = derecha_vector[j]
        j += 1
        k += 1


def merge_sort(vector, izquierda, derecha):
    if izquierda < derecha:
        medio = (izquierda + derecha) // 2

        merge_sort(vector, izquierda, medio)
        merge_sort(vector, medio + 1, derecha)

        merge(vector, izquierda, medio, derecha)


n = int(input("Ingrese la cantidad de elementos: "))

vector_bubble = []
vector_merge = []

for i in range(n):
    numero = int(input(f"Elemento {i}: "))
    vector_bubble.append(numero)
    vector_merge.append(numero)

bubble_sort(vector_bubble)
merge_sort(vector_merge, 0, n - 1)

print("\nVector ordenado con Bubble Sort:")
print(vector_bubble)

print("\nVector ordenado con Merge Sort:")
print(vector_merge)

print("\nComparación de eficiencia:")
print("Bubble Sort tiene complejidad O(n^2).")
print("Merge Sort tiene complejidad O(n log n).")
print("Merge Sort suele ser más eficiente para grandes cantidades de datos.")
