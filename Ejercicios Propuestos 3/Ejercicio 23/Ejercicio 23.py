NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

def calcular_mcd(num1, num2):

    # Convertir a positivos en caso de ingresar números negativos
    if num1 < 0:
        num1 = -num1

    if num2 < 0:
        num2 = -num2

    # Aplicar el algoritmo de Euclides
    while num2 != 0:
        resto = num1 % num2
        num1 = num2
        num2 = resto

    # Devolver el MCD
    return num1


# Programa principal

# Solicitar los dos números enteros
a = int(input("Ingrese el primer número entero: "))
b = int(input("Ingrese el segundo número entero: "))

# Llamar a la función para calcular el MCD
mcd = calcular_mcd(a, b)

# Mostrar el resultado
print("----------------------")
print(f"El Máximo Común Divisor (MCD) de {a} y {b} es: {mcd}")
