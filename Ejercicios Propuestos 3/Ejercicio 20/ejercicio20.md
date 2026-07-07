# Ejercicio 20:

Sistema de calificaciones con archivos: Leer notas de estudiantes desde dos archivos (grupo A y grupo B), calcular los promedios respectivos, generar los archivos ordenados por mérito y un archivo adicional con los estudiantes que pertenecen al tercio superior de cada grupo.

# Algoritmo:

INICIO

```
    Crear listas vacías:
        nombresA
        promediosA
        nombresB
        promediosB

    ABRIR archivo "grupoA.txt" EN modo lectura

    MIENTRAS existan datos en "grupoA.txt" HACER
        Leer nombre, nota1, nota2, nota3

        promedio = (nota1 + nota2 + nota3) / 3

        Guardar nombre en nombresA
        Guardar promedio en promediosA
    FIN MIENTRAS

    CERRAR archivo "grupoA.txt"


    ABRIR archivo "grupoB.txt" EN modo lectura

    MIENTRAS existan datos en "grupoB.txt" HACER
        Leer nombre, nota1, nota2, nota3

        promedio = (nota1 + nota2 + nota3) / 3

        Guardar nombre en nombresB
        Guardar promedio en promediosB
    FIN MIENTRAS

    CERRAR archivo "grupoB.txt"


    ORDENAR nombresA y promediosA de mayor a menor según promedio

    ORDENAR nombresB y promediosB de mayor a menor según promedio


    ABRIR archivo "grupoA_ordenado.txt" EN modo escritura

    PARA cada estudiante del Grupo A HACER
        Escribir nombre y promedio en "grupoA_ordenado.txt"
    FIN PARA

    CERRAR archivo "grupoA_ordenado.txt"


    ABRIR archivo "grupoB_ordenado.txt" EN modo escritura

    PARA cada estudiante del Grupo B HACER
        Escribir nombre y promedio en "grupoB_ordenado.txt"
    FIN PARA

    CERRAR archivo "grupoB_ordenado.txt"


    tercioA = cantidad de estudiantes del Grupo A / 3
    tercioB = cantidad de estudiantes del Grupo B / 3


    ABRIR archivo "tercioSuperior.txt" EN modo escritura

    Escribir "Tercio Superior Grupo A"

    PARA i desde 0 hasta tercioA - 1 HACER
        Escribir nombresA[i] y promediosA[i]
    FIN PARA

    Escribir "Tercio Superior Grupo B"

    PARA i desde 0 hasta tercioB - 1 HACER
        Escribir nombresB[i] y promediosB[i]
    FIN PARA

    CERRAR archivo "tercioSuperior.txt"


    Mostrar "Proceso finalizado. Archivos generados correctamente."

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
