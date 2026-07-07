Algoritmo GestionInventario

    Definir codigo, nombre Como Caracter
    Definir precio, descuento, precioFinal Como Real

    descuento <- 0.15

    Abrir "productos.txt" Para Lectura Como archivo

    Escribir "========= REPORTE DE INVENTARIO ========="

    Mientras No FinDeArchivo(archivo) Hacer

        Leer archivo, codigo, nombre, precio

        precioFinal <- precio - (precio * descuento)

        Escribir "Código: ", codigo
        Escribir "Producto: ", nombre
        Escribir "Precio original: S/. ", precio
        Escribir "Precio con descuento: S/. ", precioFinal
        Escribir "-----------------------------------------"

    FinMientras

    Cerrar archivo

    Escribir "Fin del reporte."

FinAlgoritmo
