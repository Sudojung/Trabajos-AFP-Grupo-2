# Ejercicio 1:

Suma de elementos en vector: Leer un vector de enteros y calcular la suma total.


# Algoritmo:

INICIO

    Definir cantidad, i, suma Como Entero
    Definir vectorNumeros Como Entero
    
    suma <- 0
    
    Escribir "Ingrese la cantidad de elementos que tendrá el vector:"
    Leer cantidad
    
    Dimension vectorNumeros[cantidad]
    
    Escribir "Ingrese los números enteros uno por uno:"
    
    Para i <- 0 Hasta cantidad - 1  Hacer
        Escribir "Valor para la posición ", i, ":"
        Leer vectorNumeros[i]
        
        suma <- suma + vectorNumeros[i]
    Fin Para
    
    Escribir "La suma total de los elementos del vector es: ", suma

FIN 


# Prueba de Escritorio:

Datos de entrada:
- cantidad = 4  
- vectorNumeros = 5, 8, -3, 10


|   i   | Operación (suma)               | Resultados |
|-------|------------------------------------|------------------|
| i=0   | suma = 0 + 5                       | suma = 5         |
| i=1   | suma = 5 + 8                       | suma = 13        |
| i=2   | suma = 13 + (-3)                   | suma = 10        |
| i=3   | suma = 10 + 10                     | suma = 20        |

