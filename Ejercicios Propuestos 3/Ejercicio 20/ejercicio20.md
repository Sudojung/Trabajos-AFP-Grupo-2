# Ejercicio 20:

Sistema de calificaciones con archivos: Leer notas de estudiantes desde dos archivos (grupo A y grupo B), calcular los promedios respectivos, generar los archivos ordenados por mérito y un archivo adicional con los estudiantes que pertenecen al tercio superior de cada grupo.

# Algoritmo:

INICIO

```
Definir nombre Como Cadena
Definir nota1, nota2, nota3 Como Real
Definir i, j, cantidadA, cantidadB, tercioA, tercioB Como Entero
Definir nombresA, nombresB Como Cadena
Definir promediosA, promediosB Como Real
Definir tempProm Como Real
Definir tempNombre Como Cadena

' --- Lectura y cálculo de promedios - Grupo A ---
cantidadA <- 0
Abrir Archivo "grupoA.txt" Para Lectura
Mientras No FinDeArchivo("grupoA.txt") Hacer
    Leer Archivo "grupoA.txt", nombre, nota1, nota2, nota3
    nombresA[cantidadA] <- nombre
    promediosA[cantidadA] <- (nota1 + nota2 + nota3) / 3
    cantidadA <- cantidadA + 1
FinMientras
Cerrar Archivo "grupoA.txt"

' --- Lectura y cálculo de promedios - Grupo B ---
cantidadB <- 0
Abrir Archivo "grupoB.txt" Para Lectura
Mientras No FinDeArchivo("grupoB.txt") Hacer
    Leer Archivo "grupoB.txt", nombre, nota1, nota2, nota3
    nombresB[cantidadB] <- nombre
    promediosB[cantidadB] <- (nota1 + nota2 + nota3) / 3
    cantidadB <- cantidadB + 1
FinMientras
Cerrar Archivo "grupoB.txt"

' --- Ordenar Grupo A de mayor a menor promedio (burbuja) ---
Para i <- 0 Hasta cantidadA - 2 Hacer
    Para j <- 0 Hasta cantidadA - 2 - i Hacer
        Si promediosA[j] < promediosA[j+1] Entonces
            tempProm <- promediosA[j]
            promediosA[j] <- promediosA[j+1]
            promediosA[j+1] <- tempProm
            tempNombre <- nombresA[j]
            nombresA[j] <- nombresA[j+1]
            nombresA[j+1] <- tempNombre
        FinSi
    Fin Para
Fin Para

' --- Ordenar Grupo B de mayor a menor promedio (burbuja) ---
Para i <- 0 Hasta cantidadB - 2 Hacer
    Para j <- 0 Hasta cantidadB - 2 - i Hacer
        Si promediosB[j] < promediosB[j+1] Entonces
            tempProm <- promediosB[j]
            promediosB[j] <- promediosB[j+1]
            promediosB[j+1] <- tempProm
            tempNombre <- nombresB[j]
            nombresB[j] <- nombresB[j+1]
            nombresB[j+1] <- tempNombre
        FinSi
    Fin Para
Fin Para

' --- Escribir archivos ordenados por mérito ---
Abrir Archivo "grupoA_ordenado.txt" Para Escritura
Para i <- 0 Hasta cantidadA - 1 Hacer
    Escribir Archivo "grupoA_ordenado.txt", nombresA[i], promediosA[i]
Fin Para
Cerrar Archivo "grupoA_ordenado.txt"

Abrir Archivo "grupoB_ordenado.txt" Para Escritura
Para i <- 0 Hasta cantidadB - 1 Hacer
    Escribir Archivo "grupoB_ordenado.txt", nombresB[i], promediosB[i]
Fin Para
Cerrar Archivo "grupoB_ordenado.txt"

' --- Calcular tercio superior de cada grupo ---
tercioA <- cantidadA / 3
tercioB <- cantidadB / 3

Abrir Archivo "tercioSuperior.txt" Para Escritura

Escribir Archivo "tercioSuperior.txt", "-- Tercio Superior Grupo A --"
Para i <- 0 Hasta tercioA - 1 Hacer
    Escribir Archivo "tercioSuperior.txt", nombresA[i], promediosA[i]
Fin Para

Escribir Archivo "tercioSuperior.txt", "-- Tercio Superior Grupo B --"
Para i <- 0 Hasta tercioB - 1 Hacer
    Escribir Archivo "tercioSuperior.txt", nombresB[i], promediosB[i]
Fin Para

Cerrar Archivo "tercioSuperior.txt"

Escribir "Proceso finalizado. Archivos generados: grupoA_ordenado.txt, grupoB_ordenado.txt y tercioSuperior.txt"
```

FIN

# Prueba de Escritorio:

Datos de entrada (archivo "grupoA.txt"):

- Carlos, 15, 16, 14
- Ana, 12, 10, 11
- Beto, 18, 19, 17

Datos de entrada (archivo "grupoB.txt"):

- Diana, 10, 11, 9
- Elena, 20, 19, 18
- Franco, 14, 15, 13

**Cálculo de promedios - Grupo A:**

| Nombre | Cálculo | Promedio |
|---|---|---|
| Carlos | (15+16+14)/3 | 15 |
| Ana | (12+10+11)/3 | 11 |
| Beto | (18+19+17)/3 | 18 |

**Cálculo de promedios - Grupo B:**

| Nombre | Cálculo | Promedio |
|---|---|---|
| Diana | (10+11+9)/3 | 10 |
| Elena | (20+19+18)/3 | 19 |
| Franco | (14+15+13)/3 | 14 |

**Ordenamiento por mérito (mayor a menor):**

Grupo A ordenado: Beto (18), Carlos (15), Ana (11)
Grupo B ordenado: Elena (19), Franco (14), Diana (10)

**Cálculo del tercio superior:** tercioA = 3/3 = 1, tercioB = 3/3 = 1

- Tercio superior Grupo A: Beto (18)
- Tercio superior Grupo B: Elena (19)

**Salida — Archivos generados:**

`grupoA_ordenado.txt`:
```
Beto, 18
Carlos, 15
Ana, 11
```

`grupoB_ordenado.txt`:
```
Elena, 19
Franco, 14
Diana, 10
```

`tercioSuperior.txt`:
```
-- Tercio Superior Grupo A --
Beto, 18
-- Tercio Superior Grupo B --
Elena, 19
```

Mensaje en pantalla: Proceso finalizado. Archivos generados: grupoA_ordenado.txt, grupoB_ordenado.txt y tercioSuperior.txt
