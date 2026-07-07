NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

# Función para calcular los puntos de calidad
def puntos_calidad(promedio):

    # Eliminar los decimales del promedio
    promedio = int(promedio)

    # Asignar los puntos según el promedio
    if 90 <= promedio <= 100:
        puntos = 4
    elif 80 <= promedio <= 89:
        puntos = 3
    elif 70 <= promedio <= 79:
        puntos = 2
    elif 60 <= promedio <= 69:
        puntos = 1
    else:
        puntos = 0

    return puntos

# Programa principal

# Inicializar la suma de las notas
suma = 0

print("--- Calculadora de Puntos de Calidad ---")

# Solicitar las cuatro notas
for i in range(1, 5):
    nota = float(input(f"Ingrese la nota {i} (0 - 100): "))
    suma += nota

# Calcular el promedio
promedio_estudiante = suma / 4

# Obtener los puntos de calidad
resultado = puntos_calidad(promedio_estudiante)

# Mostrar los resultados
print("----------------------")
print(f"Promedio calculado: {promedio_estudiante:.2f}")
print(f"Puntos de calidad: {resultado}")
