Algoritmo ArchivoDeProductos

    Definir producto Como Caracter
    Definir precio, descuento, precioFinal Como Real

    descuento <- 0.10

    Abrir "productos.txt" Para Lectura Como archivo

    Mientras No FinDeArchivo(archivo) Hacer

        Leer archivo, producto, precio

        precioFinal <- precio - (precio * descuento)

        Escribir "Producto: ", producto
        Escribir "Precio original: S/.", precio
        Escribir "Precio con descuento: S/.", precioFinal
        Escribir "------------------------------"

    FinMientras

    Cerrar archivo

FinAlgoritmo
