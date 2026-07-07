# Ejercicio 13:

Archivo de productos: Leer productos y precios desde un archivo y aplicar un descuento.

# Algoritmo:

INICIO

```
Definir nombreProducto Como Cadena
Definir precio, precioConDescuento, descuento Como Real
Definir archivo Como Cadena

archivo <- "productos.txt"
descuento <- 0.1

Abrir Archivo archivo Para Lectura

Mientras No FinDeArchivo(archivo) Hacer
    Leer Archivo archivo, nombreProducto, precio
    precioConDescuento <- precio - (precio * descuento)
    Escribir "Producto: ", nombreProducto, " - Precio original: ", precio, " - Precio con descuento: ", precioConDescuento
FinMientras

Cerrar Archivo archivo
```

FIN

# Prueba de Escritorio:

Datos de entrada (archivo "productos.txt", descuento = 10%):

- Mesa, 100
- Silla, 50
- Lampara, 30

| Producto | precio | precioConDescuento |
|---|---|---|
| Mesa | 100 | 100 - (100*0.1) = 90 |
| Silla | 50 | 50 - (50*0.1) = 45 |
| Lampara | 30 | 30 - (30*0.1) = 27 |

**Salida:**
Producto: Mesa - Precio original: 100 - Precio con descuento: 90
Producto: Silla - Precio original: 50 - Precio con descuento: 45
Producto: Lampara - Precio original: 30 - Precio con descuento: 27
