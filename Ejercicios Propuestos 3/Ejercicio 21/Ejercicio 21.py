NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

def ordenar_pares_impares(arr):
    n = len(arr)

    # Aplicar el método Bubble Sort
    for i in range(n - 1):
        for j in range(n - 1 - i):

            debe_intercambiar = False

            # Si el izquierdo es impar y el derecho es par
            if arr[j] % 2 != 0 and arr[j + 1] % 2 == 0:
                debe_intercambiar = True

            # Si ambos son pares, ordenar ascendentemente
            elif arr[j] % 2 == 0 and arr[j + 1] % 2 == 0:
                if arr[j] > arr[j + 1]:
                    debe_intercambiar = True

            # Si ambos son impares, ordenar descendentemente
            elif arr[j] % 2 != 0 and arr[j + 1] % 2 != 0:
                if arr[j] < arr[j + 1]:
                    debe_intercambiar = True

            # Realizar el intercambio
            if debe_intercambiar:
                aux = arr[j]
                arr[j] = arr[j + 1]
                arr[j + 1] = aux


# Programa principal

# Solicitar la cantidad de elementos
n = int(input("Ingrese la cantidad de elementos que tendrá el vector: "))

# Crear el vector
vector = []

# Llenar el vector
print("--- Ingrese los números del vector ---")

for i in range(n):
    numero = int(input(f"Valor para la posición {i}: "))
    vector.append(numero)

# Mostrar el vector original
print("\nVector original:")

for numero in vector:
    print(numero, end=" ")

print("\n----------------------")

# Ordenar el vector
ordenar_pares_impares(vector)

# Mostrar el resultado
print("Vector final ordenado:")

for numero in vector:
    print(numero, end=" ")

print()
