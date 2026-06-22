NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

# Calcular y visualizar la suma y el producto de los números pares comprendidos entre 20 y 400 ambos inclusive.
    
# Inicializamos las variables acumuladoras
suma = 0
producto = 1

# Recorremos únicamente los números pares entre 20 y 400
for i in range(20, 401, 2):

    # Acumulamos la suma de los números pares
    suma += i

    # Acumulamos el producto de los números pares
    producto *= i

    # Mostramos los valores parciales en cada iteración
    print(f"i={i} | suma={suma} | producto={producto}")