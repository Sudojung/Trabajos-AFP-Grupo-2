# Ejercicio 10:

Vector dinámico con apuntadores: Crear un vector dinámico usando new y delete.

# Algoritmo:

INICIO

```
Definir cantidad, i Como Entero
Definir puntero Como Puntero a Entero

Escribir "Ingrese la cantidad de elementos del vector:"
Leer cantidad

puntero <- new Entero[cantidad]

Escribir "Ingrese los elementos:"
Para i <- 0 Hasta cantidad - 1 Hacer
    Escribir "Elemento ", i, ":"
    Leer puntero[i]
Fin Para

Escribir "Elementos del vector dinámico:"
Para i <- 0 Hasta cantidad - 1 Hacer
    Escribir Sin Saltar puntero[i], " "
Fin Para

delete[] puntero
puntero <- NULL
```

FIN

# Prueba de Escritorio:

Datos de entrada:

- cantidad = 3
- elementos ingresados = 8, 15, 3

| i | Acción | puntero[i] |
|---|---|---|
| - | puntero <- new Entero[3] | memoria reservada |
| 0 | Leer puntero[0] | 8 |
| 1 | Leer puntero[1] | 15 |
| 2 | Leer puntero[2] | 3 |
| - | delete[] puntero | memoria liberada |

**Salida:** Elementos del vector dinámico: 8 15 3
