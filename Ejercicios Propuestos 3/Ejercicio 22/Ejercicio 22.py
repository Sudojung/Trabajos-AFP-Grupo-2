NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

# Función para invertir un número entero
def invertir_numero(num):

    invertido = 0
    es_negativo = False

    # Verificar si el número es negativo
    if num < 0:
        es_negativo = True
        num = -num

    # Invertir los dígitos del número
    while num > 0:
        digito = num % 10
        invertido = (invertido * 10) + digito
        num //= 10

    # Si el número original era negativo,
    # devolver el resultado con signo negativo
    if es_negativo:
        invertido *= -1

    return invertido


# Programa principal

# Solicitar un número entero
numero_original = int(input("Ingrese un número entero (puede ser negativo): "))

# Llamar a la función que invierte el número
resultado = invertir_numero(numero_original)

# Mostrar los resultados
print("----------------------")
print("Número original:", numero_original)
print("Número invertido:", resultado)
