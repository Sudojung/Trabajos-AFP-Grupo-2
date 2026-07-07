NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

# Variables
suma = 0
cantidad = 0

# Abrir el archivo en modo lectura
with open("estudiantes.txt", "r", encoding="utf-8") as archivo:

    # Leer cada línea del archivo
    for linea in archivo:

        # Separar el nombre y la nota
        datos = linea.split()

        nombre = datos[0]
        nota = float(datos[1])

        print(f"Estudiante: {nombre}  Nota: {nota}")

        suma += nota
        cantidad += 1

# Calcular el promedio
if cantidad > 0:
    promedio = suma / cantidad
    print("\nPromedio general:", promedio)
else:
    print("El archivo está vacío.")
