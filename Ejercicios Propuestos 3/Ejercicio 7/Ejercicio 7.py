NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

# Solicitar la cantidad de números
n = int(input("Ingrese la cantidad de números: "))

# Crear una lista vacía para almacenar los números
vector = []

# Leer los números del usuario
for i in range(n):
    numero = int(input(f"Número para la posición {i}: "))
    vector.append(numero)

# Insertion Sort
for i in range(1, n):
    # Guardar el elemento actual
    key = vector[i]

    # Inicializar el índice del elemento anterior
    j = i - 1

    # Desplazar hacia la derecha los elementos mayores que 'key'
    while j >= 0 and vector[j] > key:
        vector[j + 1] = vector[j]
        j -= 1

    # Insertar 'key' en su posición correcta
    vector[j + 1] = key

# Mostrar el vector ordenado
print("Vector ordenado:")

for numero in vector:
    print(numero, end=" ")

print()  # Salto de línea