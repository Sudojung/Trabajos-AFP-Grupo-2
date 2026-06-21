NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

# Escriba un programa que: rota, hacia la izquierda, los dígitos de un número tantas veces como indique el promedio de sus dígitos. Ej. si el valor de entrada es 123 se obtendrá el número 312.

# Solicitamos un número entero
num = int(input("Ingrese un número: "))

# Variables auxiliares para calcular el promedio de los dígitos
temp = num
cantidad = 0
suma_digitos = 0

# Recorremos cada dígito del número
while temp > 0:
    digito = temp % 10

    # Acumulamos la suma de los dígitos
    suma_digitos += digito

    # Contamos la cantidad de dígitos
    cantidad += 1

    # Eliminamos el último dígito
    temp = temp // 10

# Calculamos el promedio de los dígitos
promedio = suma_digitos // cantidad

# Mostramos información obtenida
print(f"Cantidad de dígitos: {cantidad}")
print(f"Promedio de dígitos (cantidad de rotaciones): {promedio}")

# Realizamos las rotaciones hacia la izquierda
for i in range(1, promedio + 1):

    # Obtenemos el divisor correspondiente
    divisor = 10 ** (cantidad - 1)

    # Extraemos el primer dígito
    primer_digito = num // divisor

    # Movemos el primer dígito al final
    num = (num % divisor) * 10 + primer_digito

    # Mostramos cada rotación
    print(f"Rotación {i}: {num}")