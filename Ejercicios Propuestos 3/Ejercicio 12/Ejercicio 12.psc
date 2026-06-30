Algoritmo ArchivoEstudiantes
    Definir nombre Como Cadena
    Definir nota, suma_notas, promedio Como Real
    Definir contador_estudiantes Como Entero
    
    suma_notas <- 0
    contador_estudiantes <- 0
    
    Escribir "Leyendo datos desde el archivo 'estudiantes.txt'..."
    Escribir "--------------------------------------------------"
    
    Abrir "estudiantes.txt" Para Lectura Como mi_archivo
    
    Mientras No FinDeArchivo(mi_archivo) Hacer
        Leer Desde mi_archivo nombre, nota
        Escribir "Estudiante: ", nombre, " | Nota: ", nota
        
        suma_notas <- suma_notas + nota
        contador_estudiantes <- contador_estudiantes + 1
    FinMientras
    
    Cerrar mi_archivo
    
    Escribir "--------------------------------------------------"
    
    Si contador_estudiantes > 0 Entonces
        promedio <- suma_notas / contador_estudiantes
        Escribir "Total de estudiantes evaluados: ", contador_estudiantes
        Escribir "El promedio general del salón es: ", promedio
    Sino
        Escribir "Error: El archivo no contenía datos de estudiantes."
    FinSi
    
FinAlgoritmo
