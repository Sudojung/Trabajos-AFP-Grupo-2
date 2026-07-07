Algoritmo ArchivoEstudiantes

    Definir nombre Como Caracter
    Definir nota, suma, promedio Como Real
    Definir cantidad Como Entero

    suma <- 0
    cantidad <- 0

    Abrir "estudiantes.txt" Para Lectura Como archivo

    Mientras No FinDeArchivo(archivo) Hacer

        Leer archivo, nombre, nota

        Escribir "Estudiante: ", nombre, "  Nota: ", nota

        suma <- suma + nota
        cantidad <- cantidad + 1

    FinMientras

    Cerrar archivo

    Si cantidad > 0 Entonces
        promedio <- suma / cantidad
        Escribir ""
        Escribir "Promedio general: ", promedio
    Sino
        Escribir "El archivo está vacío."
    FinSi

FinAlgoritmo
