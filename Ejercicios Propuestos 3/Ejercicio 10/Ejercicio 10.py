NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

# Solicitar el tamaño del vector
n = int(input("Ingrese el tamaño del vector: "))

# Crear una lista vacía (vector dinámico)
vector = []

# Llenar el vector con los valores ingresados por el usuario
print("Llenando el vector...")

for i in range(n):
    numero = int(input(f"Valor para la posición {i}: "))
    vector.append(numero)

# Mostrar el contenido del vector
print("Vector dinámico:")

for numero in vector:
    print(numero, end=" ")

print() 
