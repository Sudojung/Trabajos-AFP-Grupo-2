NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

# Se crea una variable acumuladora llamada suma
suma = 0

# Recorremos los números naturales del 1 al 100
for i in range(1, 101):

    # Calculamos el cuadrado del número actual
    cuadrado = i * i

    # Acumulamos el cuadrado en la suma total
    suma += cuadrado

# Mostramos el resultado final en pantalla
print(f"La suma de los cuadrados de los 100 primeros números naturales es: {suma}")