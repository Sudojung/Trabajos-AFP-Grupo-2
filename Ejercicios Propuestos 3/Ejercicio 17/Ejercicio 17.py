NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

# Descuento del 15 %
descuento = 0.15

print("========= REPORTE DE INVENTARIO =========")

# Abrir el archivo en modo lectura
with open("productos.txt", "r", encoding="utf-8") as archivo:

    # Leer cada línea del archivo
    for linea in archivo:

        # Separar los datos del producto
        datos = linea.split()

        codigo = datos[0]
        nombre = datos[1]
        precio = float(datos[2])

        # Calcular el precio con descuento
        precio_final = precio - (precio * descuento)

        # Mostrar el reporte
        print(f"Código: {codigo}")
        print(f"Producto: {nombre}")
        print(f"Precio original: S/. {precio:.2f}")
        print(f"Precio con descuento: S/. {precio_final:.2f}")
        print("-" * 40)

print("Fin del reporte.")
