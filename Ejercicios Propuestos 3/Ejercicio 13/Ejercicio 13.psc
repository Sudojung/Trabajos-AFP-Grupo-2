Algoritmo ArchivoProductos
    Definir producto Como Cadena
    Definir precio, descuento, precio_final Como Real
    
    Escribir "Ingrese el porcentaje de descuento a aplicar (0-100):"
    Leer descuento
    
    Escribir "Procesando productos desde 'productos.txt'..."
    Escribir "--------------------------------------------------"
    
    Abrir "productos.txt" Para Lectura Como mi_archivo
    
    Mientras No FinDeArchivo(mi_archivo) Hacer
        Leer Desde mi_archivo producto, precio
        
        precio_final <- precio - (precio * (descuento / 100))
        
        Escribir "Producto: ", producto, " | Precio Original: $", precio, " | Con Descuento: $", precio_final
    FinMientras
    
    Cerrar mi_archivo
    Escribir "--------------------------------------------------"
    Escribir "Proceso de descuento finalizado con éxito."
    
FinAlgoritmo
