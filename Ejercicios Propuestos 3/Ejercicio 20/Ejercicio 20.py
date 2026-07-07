NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

# Función para leer los datos de un grupo desde un archivo
def leer_grupo(nombre_archivo):
    estudiantes = []

    # Abrir el archivo en modo lectura
    with open(nombre_archivo, "r", encoding="utf-8") as archivo:
        for linea in archivo:
            # Separar los datos usando la coma
            datos = linea.strip().split(",")

            # Obtener nombre y notas
            nombre = datos[0]
            nota1 = float(datos[1])
            nota2 = float(datos[2])
            nota3 = float(datos[3])

            # Calcular el promedio del estudiante
            promedio = (nota1 + nota2 + nota3) / 3

            # Guardar nombre y promedio
            estudiantes.append([nombre, promedio])

    return estudiantes


# Función para ordenar estudiantes por mérito
def ordenar_por_merito(estudiantes):
    n = len(estudiantes)

    # Ordenamiento burbuja de mayor a menor promedio
    for i in range(n - 1):
        for j in range(n - 1 - i):
            if estudiantes[j][1] < estudiantes[j + 1][1]:
                estudiantes[j], estudiantes[j + 1] = estudiantes[j + 1], estudiantes[j]


# Función para guardar un grupo ordenado en un archivo
def guardar_grupo_ordenado(nombre_archivo, estudiantes):
    with open(nombre_archivo, "w", encoding="utf-8") as archivo:
        for estudiante in estudiantes:
            archivo.write(f"{estudiante[0]}, {estudiante[1]:.2f}\n")


# Función para guardar el tercio superior de ambos grupos
def guardar_tercio_superior(grupoA, grupoB):
    tercioA = len(grupoA) // 3
    tercioB = len(grupoB) // 3

    with open("tercioSuperior.txt", "w", encoding="utf-8") as archivo:
        archivo.write("-- Tercio Superior Grupo A --\n")

        for i in range(tercioA):
            archivo.write(f"{grupoA[i][0]}, {grupoA[i][1]:.2f}\n")

        archivo.write("\n-- Tercio Superior Grupo B --\n")

        for i in range(tercioB):
            archivo.write(f"{grupoB[i][0]}, {grupoB[i][1]:.2f}\n")


# Programa principal

# Leer los datos de los archivos
grupoA = leer_grupo("grupoA.txt")
grupoB = leer_grupo("grupoB.txt")

# Ordenar los grupos por promedio de mayor a menor
ordenar_por_merito(grupoA)
ordenar_por_merito(grupoB)

# Guardar los archivos ordenados por mérito
guardar_grupo_ordenado("grupoA_ordenado.txt", grupoA)
guardar_grupo_ordenado("grupoB_ordenado.txt", grupoB)

# Guardar el archivo con el tercio superior
guardar_tercio_superior(grupoA, grupoB)

# Mostrar mensaje final
print("Proceso finalizado.")
print("Archivos generados:")
print("grupoA_ordenado.txt")
print("grupoB_ordenado.txt")
print("tercioSuperior.txt")
