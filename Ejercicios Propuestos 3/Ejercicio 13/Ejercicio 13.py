NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

# Porcentaje de descuento (10%)
descuento = 0.10

# Abrir el archivo en modo lectura
with open("productos.txt", "r", encoding="utf-8") as archivo:

    # Leer cada línea del archivo
    for linea in archivo:

        # Separar el nombre del producto y su precio
        datos = linea.split()

        producto = datos[0]
        precio = float(datos[1])

        # Calcular el precio con descuento
        precio_final = precio - (precio * descuento)

        # Mostrar los resultados
        print(f"Producto: {producto}")
        print(f"Precio original: S/. {precio:.2f}")
        print(f"Precio con descuento: S/. {precio_final:.2f}")
        print("-" * 30)
