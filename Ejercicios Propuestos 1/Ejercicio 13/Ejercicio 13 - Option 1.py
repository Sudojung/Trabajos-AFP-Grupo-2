NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

# Calcular y visualizar la suma y el producto de los números pares comprendidos entre 20 y 400 ambos inclusive.
    
# Inicializamos las variables acumuladoras
suma = 0
producto = 1

# Recorremos los números desde 20 hasta 400
for i in range(20, 401):

    # Verificamos si el número es par
    if i % 2 == 0:

        # Acumulamos la suma de los números pares
        suma += i

        # Acumulamos el producto de los números pares
        producto *= i

# Mostramos los resultados obtenidos
print("Suma:", suma)
print("Producto:", producto)