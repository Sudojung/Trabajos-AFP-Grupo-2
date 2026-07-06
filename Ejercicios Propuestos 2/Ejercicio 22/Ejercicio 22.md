# Ejercicio 22:

 Elabore un programa C++ que lea por teclado un número n entero positivo y presente por pantalla 
una pirámide de n filas que responda al siguiente esquema:

<img width="476" height="209" alt="image" src="https://github.com/user-attachments/assets/d56fc2a5-1ffc-467d-bb25-3e6a80453be2" />

# Algoritmo:

Algoritmo PiramideNumeros
    
    Definir n, i, j, val Como Entero
    Escribir "Ingrese un numero entero positivo n:"
    Leer n
    
    // Validación ya que nos indica que tiene que ser positivo.
    Si n <= 0 Entonces
        Escribir "Error: El numero debe ser positivo."
    Sino
        Para i <- 1 Hasta n Hacer
            // Imprimir espacios para darle forma de pirámide 
            Para j <- 1 Hasta n - i Hacer
                Escribir Sin Saltar "  "
            FinPara
            
            // Lado izquierdo de la pirámide (pa arriba)
            Para j <- 0 Hasta i - 1 Hacer
                val <- (i + j) MOD 10
                Escribir Sin Saltar val, " "
            FinPara
            
            // Lado derecho de la pirámide (pa abajo)
            Para j <- i - 2 Hasta 0 Con Paso -1 Hacer
                val <- (i + j) MOD 10
                Escribir Sin Saltar val, " "
            FinPara
            
            Escribir "" // Salto de línea al terminar la fila
        FinPara
    FinSi
FinAlgoritmo

# Prueba de Escritorio:

| Fila (i) | Espacios antes | Parte ascendente | Parte descendente | Línea que se imprime |
|---|---:|---|---|---|
| 1 | 0 | 1 | — | 1 |
| 2 | 1 | 2 3 | 2 | 2 3 2 |
| 3 | 2 | 3 4 5 | 4 3 | 3 4 5 4 3 |
| 4 | 3 | 4 5 6 7 | 6 5 4 | 4 5 6 7 6 5 4 |
| 5 | 4 | 5 6 7 8 9 | 8 7 6 5 | 5 6 7 8 9 8 7 6 5 |
| 6 | 5 | 6 7 8 9 0 1 | 0 9 8 7 6 | 6 7 8 9 0 1 0 9 8 7 6 |
| 7 | 6 | 7 8 9 0 1 2 3 | 2 1 0 9 8 7 | 7 8 9 0 1 2 3 2 1 0 9 8 7 |
| 8 | 7 | 8 9 0 1 2 3 4 5 | 4 3 2 1 0 9 8 | 8 9 0 1 2 3 4 5 4 3 2 1 0 9 8 |
| 9 | 8 | 9 0 1 2 3 4 5 6 7 | 6 5 4 3 2 1 0 9 | 9 0 1 2 3 4 5 6 7 6 5 4 3 2 1 0 9 |
| 10 | 9 | 0 1 2 3 4 5 6 7 8 9 | 8 7 6 5 4 3 2 1 0 | 0 1 2 3 4 5 6 7 8 9 8 7 6 5 4 3 2 1 0 |
