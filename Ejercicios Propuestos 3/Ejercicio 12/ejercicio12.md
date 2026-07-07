# Ejercicio 12:

Archivo de estudiantes: Leer nombres y notas desde un archivo y calcular el promedio general.

# Algoritmo:

INICIO

```
Definir nombre Como Cadena
Definir nota Como Real
Definir suma, promedioGeneral Como Real
Definir contador Como Entero
Definir archivo Como Cadena

archivo <- "estudiantes.txt"
suma <- 0
contador <- 0

Abrir Archivo archivo Para Lectura

Mientras No FinDeArchivo(archivo) Hacer
    Leer Archivo archivo, nombre, nota
    suma <- suma + nota
    contador <- contador + 1
    Escribir "Estudiante: ", nombre, " - Nota: ", nota
FinMientras

Cerrar Archivo archivo

Si contador > 0 Entonces
    promedioGeneral <- suma / contador
    Escribir "El promedio general es: ", promedioGeneral
SinO
    Escribir "El archivo no contiene registros."
FinSi
```

FIN

# Prueba de Escritorio:

Datos de entrada (archivo "estudiantes.txt"):

- Ana, 15
- Luis, 12
- Marta, 18

| Registro leído | suma | contador |
|---|---|---|
| Ana, 15 | 0 + 15 = 15 | 1 |
| Luis, 12 | 15 + 12 = 27 | 2 |
| Marta, 18 | 27 + 18 = 45 | 3 |

Cálculo final: promedioGeneral = 45 / 3 = 15

**Salida:** El promedio general es: 15
