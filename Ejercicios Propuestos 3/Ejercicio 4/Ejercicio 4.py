NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

# Solicitar la cantidad de elementos
cantidad = int(input("Ingrese la cantidad de elementos: "))

# Crear una lista vacía para almacenar los números
vector_numeros = []

# Leer los elementos del vector
for i in range(cantidad):
    numero = float(input(f"Valor para la posición {i}: "))
    vector_numeros.append(numero)

# Inicializar el máximo y el mínimo con el primer elemento del vector
maximo = vector_numeros[0]
minimo = vector_numeros[0]

# Recorrer el vector desde la segunda posición
for i in range(1, cantidad):
    # Verificar si el elemento actual es mayor que el máximo
    if vector_numeros[i] > maximo:
        maximo = vector_numeros[i]

    # Verificar si el elemento actual es menor que el mínimo
    if vector_numeros[i] < minimo:
        minimo = vector_numeros[i]

# Mostrar los resultados
print("El elemento MÁXIMO del vector es:", maximo)
print("El elemento MÍNIMO del vector es:", minimo)
