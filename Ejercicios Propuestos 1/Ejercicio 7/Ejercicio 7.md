# Ejercicio 7:

El siguiente programa genera un número aleatorio comprendido entre 1 y 100 y reta al usuario a que lo adivine. Después de cada intento, el programa indica si el número buscado es mayor o menor hasta que el usuario acierte.

# Algoritmo:

INICIO

    Definir numeroSecreto, intento, contador Como Entero

    numeroSecreto <- Aleatorio(1,100)
    contador <- 0

    Repetir

        Escribir "Ingrese un número entre 1 y 100:"
        Leer intento

        contador <- contador + 1

        Si intento < numeroSecreto Entonces

            Escribir "El número es mayor."

        Sino

            Si intento > numeroSecreto Entonces

                Escribir "El número es menor."

            Sino

                Escribir "¡Acertaste!"

            FinSi

        FinSi

    Hasta Que intento = numeroSecreto

    Escribir "Número de intentos: ", contador

FIN

# Prueba de Escritorio:

Datos de entrada:
- Número secreto = 37
- Intentos del usuario: 50, 40, 30, 33, 35, 37

| Intento | Número ingresado | Comparación | Salida en Pantalla | Contador |
|---------|-------------------|-------------|--------------------|----------|
| Inicio | - | - | - | 0 |
| 1 | 50 | 50 > 37 | El número es menor. | 1 |
| 2 | 40 | 40 > 37 | El número es menor. | 2 |
| 3 | 30 | 30 < 37 | El número es mayor. | 3 |
| 4 | 33 | 33 < 37 | El número es mayor. | 4 |
| 5 | 35 | 35 < 37 | El número es mayor. | 5 |
| 6 | 37 | 37 = 37 | ¡Acertaste! | 6 |

## Resultado final

- Número secreto: **37**
- Total de intentos: **6**
