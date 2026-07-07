# Ejercicio 11:

Una empresa fabrica dos productos A y B y desea saber cuál de ellos es el más aceptado en el mercado. Para ello realiza una encuesta y, por cada persona interrogada, se obtiene un par de valores: el primer valor indica la aceptación del producto A y el segundo valor indica la aceptación del producto B.

Se pide calcular:
- Total de encuestados.
- Porcentaje de consumidores que aceptan el producto A.
- Porcentaje de consumidores que aceptan el producto B.
- Porcentaje de consumidores que aceptan ambos productos.
- Porcentaje de consumidores que aceptan solo el producto A.
- Porcentaje de consumidores que aceptan solo el producto B.
- Porcentaje de consumidores que no aceptan ninguno.

# Algoritmo:

INICIO

    Definir totalPersonas, totalAceptanA, totalAceptanB Como Entero
    Definir aceptanAmbos, aceptanSoloA, aceptanSoloB, noAceptanNinguno Como Entero
    Definir respuestaA, respuestaB, i Como Entero

    totalAceptanA <- 0
    totalAceptanB <- 0
    aceptanAmbos <- 0
    aceptanSoloA <- 0
    aceptanSoloB <- 0
    noAceptanNinguno <- 0

    Escribir "Ingrese la cantidad total de personas a encuestar:"
    Leer totalPersonas

    Para i <- 1 Hasta totalPersonas Hacer

        Escribir "--- Encuesta N° ", i, " ---"

        Escribir "¿Acepta el producto A? (1=Sí, 0=No):"
        Leer respuestaA

        Escribir "¿Acepta el producto B? (1=Sí, 0=No):"
        Leer respuestaB

        Si respuestaA = 1 Entonces
            totalAceptanA <- totalAceptanA + 1
        FinSi

        Si respuestaB = 1 Entonces
            totalAceptanB <- totalAceptanB + 1
        FinSi

        Si respuestaA = 1 Y respuestaB = 1 Entonces
            aceptanAmbos <- aceptanAmbos + 1
        FinSi

        Si respuestaA = 1 Y respuestaB = 0 Entonces
            aceptanSoloA <- aceptanSoloA + 1
        FinSi

        Si respuestaA = 0 Y respuestaB = 1 Entonces
            aceptanSoloB <- aceptanSoloB + 1
        FinSi

        Si respuestaA = 0 Y respuestaB = 0 Entonces
            noAceptanNinguno <- noAceptanNinguno + 1
        FinSi

    FinPara

    Si totalPersonas > 0 Entonces

        Escribir "Total de personas encuestadas: ", totalPersonas
        Escribir "% Aceptan A: ", (totalAceptanA / totalPersonas) * 100, "%"
        Escribir "% Aceptan B: ", (totalAceptanB / totalPersonas) * 100, "%"
        Escribir "% Aceptan ambos: ", (aceptanAmbos / totalPersonas) * 100, "%"
        Escribir "% Aceptan solo A: ", (aceptanSoloA / totalPersonas) * 100, "%"
        Escribir "% Aceptan solo B: ", (aceptanSoloB / totalPersonas) * 100, "%"
        Escribir "% No aceptan ninguno: ", (noAceptanNinguno / totalPersonas) * 100, "%"

    SiNo

        Escribir "No se registraron encuestas."

    FinSi

FIN

# Prueba de Escritorio:

Datos de entrada:

- totalPersonas = 5
- Respuestas:
  - Persona 1: A = 1, B = 0
  - Persona 2: A = 1, B = 1
  - Persona 3: A = 0, B = 1
  - Persona 4: A = 1, B = 1
  - Persona 5: A = 0, B = 0

| Encuestado | Rpta A | Rpta B | Total aceptan A | Total aceptan B | Aceptan ambos | Aceptan solo A | Aceptan solo B | No aceptan ninguno |
|------------|--------|--------|-----------------|-----------------|----------------|----------------|----------------|--------------------|
| Inicio | - | - | 0 | 0 | 0 | 0 | 0 | 0 |
| 1 | 1 | 0 | 1 | 0 | 0 | 1 | 0 | 0 |
| 2 | 1 | 1 | 2 | 1 | 1 | 1 | 0 | 0 |
| 3 | 0 | 1 | 2 | 2 | 1 | 1 | 1 | 0 |
| 4 | 1 | 1 | 3 | 3 | 2 | 1 | 1 | 0 |
| 5 | 0 | 0 | 3 | 3 | 2 | 1 | 1 | 1 |

## Cálculo de porcentajes

| Operación | Resultado |
|-----------|-----------|
| Total de personas encuestadas | 5 |
| % Aceptan A = (3 / 5) × 100 | 60% |
| % Aceptan B = (3 / 5) × 100 | 60% |
| % Aceptan ambos = (2 / 5) × 100 | 40% |
| % Aceptan solo A = (1 / 5) × 100 | 20% |
| % Aceptan solo B = (1 / 5) × 100 | 20% |
| % No aceptan ninguno = (1 / 5) × 100 | 20% |

## Resultado final

- Aceptan A: **60%**
- Aceptan B: **60%**
- Aceptan ambos: **40%**
- Aceptan solo A: **20%**
- Aceptan solo B: **20%**
- No aceptan ninguno: **20%**
