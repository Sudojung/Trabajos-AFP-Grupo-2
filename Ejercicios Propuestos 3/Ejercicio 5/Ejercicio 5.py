NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

# Función para calcular el factorial de un número
def calcular_factorial(n):
    # El factorial de 0 es 1
    resultado = 1

    # Si el número es mayor que 0, calcular el factorial
    if n > 0:
        for i in range(1, n + 1):
            resultado *= i

    # Retornar el resultado
    return resultado


# Programa principal

# Solicitar un número entero positivo
numero = int(input("Ingrese un número entero positivo: "))

# Verificar que el número no sea negativo
if numero >= 0:
    facto = calcular_factorial(numero)
    print(f"El factorial de {numero} es: {facto}")
else:
    print("El factorial no existe para números negativos.")
