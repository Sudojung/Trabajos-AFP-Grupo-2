# Ejercicio 5:

Escriba un programa que lea valores que representan años e indique si son o no años bisiestos. El programa seguirá leyendo años hasta un máximo de 10 o hasta que haya leído 3 años bisiestos.

# Algoritmo:

INICIO

    Definir anio, totalLeidos, bisiestosEncontrados Como Entero

    totalLeidos <- 0
    bisiestosEncontrados <- 0

    Mientras totalLeidos < 10 Y bisiestosEncontrados < 3 Hacer

        Escribir "Ingrese un año:"
        Leer anio

        totalLeidos <- totalLeidos + 1

        Si ((anio MOD 4 = 0) Y (anio MOD 100 <> 0)) O (anio MOD 400 = 0) Entonces
            Escribir anio, " es un año BISIESTO."
            bisiestosEncontrados <- bisiestosEncontrados + 1
        SiNo
            Escribir anio, " NO es un año bisiesto."
        FinSi

    FinMientras

    Escribir "--- Proceso terminado ---"
    Escribir "Total de años revisados: ", totalLeidos
    Escribir "Total de bisiestos encontrados: ", bisiestosEncontrados

FIN

# Prueba de Escritorio:

Datos de entrada:
- años = 2021, 2024, 1900, 2000, 2012

| Año | Evaluación de condiciones matemáticas | ¿Es bisiesto? | Total de años leídos | Años bisiestos encontrados |
|-----|----------------------------------------|---------------|----------------------|-----------------------------|
| 2021 | No es divisible entre 4 | No | 1 | 0 |
| 2024 | Divisible entre 4 y no entre 100 | Sí | 2 | 1 |
| 1900 | Divisible entre 4 y entre 100, pero no entre 400 | No | 3 | 1 |
| 2000 | Divisible entre 100 y también entre 400 | Sí | 4 | 2 |
| 2012 | Divisible entre 4 y no entre 100 | Sí | 5 | 3 |

## Resultado final

- Total de años revisados: **5**
- Total de bisiestos encontrados: **3**
