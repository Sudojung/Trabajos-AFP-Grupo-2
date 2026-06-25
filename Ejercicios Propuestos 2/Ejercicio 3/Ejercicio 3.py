NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

# Validación de entrada
while True:
    n = int(input("Ingrese un número natural (mayor que 0): "))

    if n <= 0:
        print("Error: debe ingresar un número natural positivo.")
    else:
        break

suma = 0

# Calculamos la suma de los cuadrados
for i in range(1, n + 1):
    suma += i * i

# Mostramos el resultado
print(f"La suma de los cuadrados de los {n} primeros números naturales es: {suma}")