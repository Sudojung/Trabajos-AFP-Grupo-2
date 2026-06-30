Algoritmo GestionInventario
    Definir producto Como Cadena
    Definir precio, descuento, precio_final Como Real
    Definir cantidad Como Entero
    
    Escribir "Ingrese el porcentaje de descuento general a aplicar (0-100):"
    Leer descuento
    
    Escribir "GENERANDO REPORTE FINAL DE INVENTARIO"
    Escribir "=================================================================="
    
    Abrir "productos.txt" Para Lectura Como archivo_inventario
    
    Mientras No FinDeArchivo(archivo_inventario) Hacer
        Leer Desde archivo_inventario producto, precio, cantidad
        
        precio_final <- precio - (precio * (descuento / 100))
        
        Escribir "Producto: ", producto
        Escribir "  - Cantidad en Stock: ", cantidad
        Escribir "  - Precio Original: $", precio
        Escribir "  - Precio con Descuento: $", precio_final
        Escribir "------------------------------------------------------------------"
    FinMientras
    
    Cerrar archivo_inventario
    Escribir "Reporte finalizado con éxito."
    
FinAlgoritmo
