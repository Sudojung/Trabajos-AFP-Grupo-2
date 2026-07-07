NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

def ordenar_vector(arr):
    n = len(arr)

    for i in range(n - 1):
        for j in range(n - i - 1):
            if arr[j] > arr[j + 1]:
                aux = arr[j]
                arr[j] = arr[j + 1]
                arr[j + 1] = aux


def imprimir_vector(arr):
    for elemento in arr:
        print(elemento, end=" ")
    print()


# Programa principal
n = int(input("Ingrese la cantidad de elementos: "))

vector = []

for i in range(n):
    valor = int(input(f"Valor para la posición {i}: "))
    vector.append(valor)

print("Vector original:")
imprimir_vector(vector)

# Se aplica la función que ordena
ordenar_vector(vector)

print("Vector ordenado:")
# Se aplica la función que imprime
imprimir_vector(vector)
