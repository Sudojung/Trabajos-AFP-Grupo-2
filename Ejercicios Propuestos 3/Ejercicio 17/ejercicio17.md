# Ejercicio 17:

Gestión de inventario con archivos: Crear archivo productos.txt, leer productos de un archivo, aplicar descuentos y generar un reporte final.

# Algoritmo:

INICIO

```
Definir nombreProducto Como Cadena
Definir precio, cantidadStock, descuento, precioFinal Como Real
Definir archivoEntrada, archivoSalida Como Cadena

archivoEntrada <- "productos.txt"
archivoSalida <- "reporte.txt"
descuento <- 0.15

Abrir Archivo archivoEntrada Para Lectura
Abrir Archivo archivoSalida Para Escritura

Mientras No FinDeArchivo(archivoEntrada) Hacer
    Leer Archivo archivoEntrada, nombreProducto, precio, cantidadStock
    precioFinal <- precio - (precio * descuento)
    Escribir Archivo archivoSalida, nombreProducto, precioFinal, cantidadStock
    Escribir "Producto: ", nombreProducto, " - Precio final: ", precioFinal, " - Stock: ", cantidadStock
FinMientras

Cerrar Archivo archivoEntrada
Cerrar Archivo archivoSalida

Escribir "Reporte generado exitosamente en reporte.txt"
```

FIN

# Prueba de Escritorio:

Datos de entrada (archivo "productos.txt", descuento = 15%):

- Teclado, 50, 20
- Mouse, 20, 35
- Monitor, 300, 10

| Producto | precio | precioFinal | cantidadStock |
|---|---|---|---|
| Teclado | 50 | 50 - (50*0.15) = 42.5 | 20 |
| Mouse | 20 | 20 - (20*0.15) = 17 | 35 |
| Monitor | 300 | 300 - (300*0.15) = 255 | 10 |

**Salida:**
Producto: Teclado - Precio final: 42.5 - Stock: 20
Producto: Mouse - Precio final: 17 - Stock: 35
Producto: Monitor - Precio final: 255 - Stock: 10
Reporte generado exitosamente en reporte.txt

Archivo "reporte.txt" generado:
- Teclado, 42.5, 20
- Mouse, 17, 35
- Monitor, 255, 10
