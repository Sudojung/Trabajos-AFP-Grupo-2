# Ejercicio 24:

Escriba una función puntosCalidad que tome el promedio de un estudiante y devuelva 4 si el promedio del estudiante está entre 90-100, 3 si el promedio es entre 80-89, 2 si el promedio es 70-79, 1 si el promedio es 60-69, y 0 si el promedio es menor que 60.

# Algoritmo:

INICIO

```
Definir promedio, puntos Como Entero

Escribir "Ingrese el promedio del estudiante:"
Leer promedio

puntos <- puntosCalidad(promedio)

Escribir "Los puntos de calidad son: ", puntos

Funcion puntos <- puntosCalidad(promedio Como Entero)
    Si promedio >= 90 Y promedio <= 100 Entonces
        puntos <- 4
    SinO
        Si promedio >= 80 Y promedio <= 89 Entonces
            puntos <- 3
        SinO
            Si promedio >= 70 Y promedio <= 79 Entonces
                puntos <- 2
            SinO
                Si promedio >= 60 Y promedio <= 69 Entonces
                    puntos <- 1
                SinO
                    puntos <- 0
                FinSi
            FinSi
        FinSi
    FinSi
FinFuncion
```

FIN

# Prueba de Escritorio:

Datos de entrada:

- promedio = 85

| Condición evaluada | Resultado | puntos |
|---|---|---|
| promedio >= 90 Y promedio <= 100 | Falso (85 < 90) | - |
| promedio >= 80 Y promedio <= 89 | Verdadero (85 está en el rango) | 3 |

Como la segunda condición se cumple, no se evalúan las siguientes.

**Salida:** Los puntos de calidad son: 3
