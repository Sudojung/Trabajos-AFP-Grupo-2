# Ejercicio 3:

Escriba un programa que muestre la suma de los 20 primeros múltiplos de 3.

# Algoritmo:

INICIO

    Definir i, multiplo, suma Como Entero

    suma <- 0

    Para i <- 1 Hasta 20 Hacer

        multiplo <- i * 3
        suma <- suma + multiplo

    FinPara

    Escribir "La suma de los 20 primeros múltiplos de 3 es: ", suma

FIN

# Prueba de Escritorio:

Datos de entrada:
- No requiere entrada del usuario.
- Se calcula la suma de los primeros 20 múltiplos de 3.

| i | Operación (i × 3) | Múltiplo | Operación (suma + múltiplo) | Resultado (suma) |
|---|-------------------|----------|-----------------------------|------------------|
| Inicio | - | - | - | 0 |
| 1 | 1 × 3 | 3 | 0 + 3 | 3 |
| 2 | 2 × 3 | 6 | 3 + 6 | 9 |
| 3 | 3 × 3 | 9 | 9 + 9 | 18 |
| 4 | 4 × 3 | 12 | 18 + 12 | 30 |
| 5 | 5 × 3 | 15 | 30 + 15 | 45 |
| 6 | 6 × 3 | 18 | 45 + 18 | 63 |
| 7 | 7 × 3 | 21 | 63 + 21 | 84 |
| 8 | 8 × 3 | 24 | 84 + 24 | 108 |
| 9 | 9 × 3 | 27 | 108 + 27 | 135 |
| 10 | 10 × 3 | 30 | 135 + 30 | 165 |
| ... | ... | ... | ... | ... |
| 20 | 20 × 3 | 60 | 570 + 60 | 630 |

## Resultado final

- **Suma de los 20 primeros múltiplos de 3:** **630**
