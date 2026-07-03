NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

# Solicitar la cantidad de notas a registrar
cantidad = int(input("Ingrese la cantidad de notas a registrar: "))

# Crear una lista vacía para almacenar las notas
vector_notas = []

# Inicializar la variable que acumulará la suma
suma = 0.0

# Solicitar las notas una por una
print("Ingrese las notas una por una:")

# Recorrer desde la posición 0 hasta cantidad - 1
for i in range(cantidad):
    # Leer la nota
    nota = float(input(f"Ingrese la nota para la posición {i}: "))
    
    # Guardar la nota en el vector
    vector_notas.append(nota)
    
    # Acumular la suma
    suma += nota

# Calcular el promedio
promedio = suma / cantidad

# Mostrar el resultado
print("El promedio de las notas es:", promedio)
