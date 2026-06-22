NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

# Un matemático descubre un método para multiplicar cualquier número entero por 11 mediante la suma de sus dígitos. Sea un número entero N que se expresa con M dígitos, el producto de dicho número por 11 está dado por la siguiente regla: “el dígito de las unidades es igual al dígito de las unidades de N, el dígito de las decenas es igual a la suma de los dígitos de unidades y decenas de N, el dígito de las centenas es igual a la suma de los dígitos de decenas y centenas de N, y así sucesivamente. Ejemplo: el producto del número 3247 por 11 es 35717. Escribir un algoritmo para que pueda multiplicar cualquier número entero por 11.

n = input("Ingresa un número: ")

# Convertir a lista de enteros
digitos = [int(d) for d in n]

resultado = []

# Primer dígito
resultado.append(digitos[0])

# Sumas intermedias
for i in range(len(digitos) - 1):
    suma = digitos[i] + digitos[i + 1]
    resultado.append(suma)

# Último dígito
resultado.append(digitos[-1])

# Manejo de llevadas (de derecha a izquierda)
for i in range(len(resultado) - 1, 0, -1):
    if resultado[i] >= 10:
        resultado[i] -= 10
        resultado[i - 1] += 1

# Mostrar resultado
print("Resultado:", "".join(map(str, resultado)))

