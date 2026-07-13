nombre = ""
nota = 0.0
suma = 0.0
promedio = 0.0
cantidad = 0

# Abrir el archivo para lectura
archivo = open("Estudiantes.txt", "r")

# Leer el archivo línea por línea
for linea in eachline(archivo)

    datos = split(linea)

    nombre = datos[1]
    nota = parse(Float64, datos[2])

    println("Estudiante: ", nombre, "  Nota: ", nota)

    global suma += nota
    global cantidad += 1

end

# Cerrar el archivo
close(archivo)

# Calcular el promedio
if cantidad > 0
    promedio = suma / cantidad
    println()
    println("Promedio general: ", promedio)
else
    println("El archivo está vacío.")
end
