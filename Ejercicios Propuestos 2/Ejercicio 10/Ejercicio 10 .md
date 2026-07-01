# Ejercicio 10:

El siguiente programa calcula el factorial de un número: 

inicio 

mostrar fin_linea, "Introduzca un entero positivo: " 

leer n 

factorial  

1 

para i 1 .. n, +1 

factorial  

finPara 

factorial * i 

mostrar fin_linea , "El factorial de ", n ," es: ", factorial 

fin 

Modifíquelo transformando la estructura para en una estructura mientras.



# Algoritmo:

Algoritmo Factoriales

    Definir n, i, factorial Como Entero
    
    // Bucle que se repite y muestra error si no es natural
    Repetir
        Escribir "Introduzca un entero positivo: "
        Leer n
        
        // Si se escribe un número menor a 1 sale el error
        Si n < 1 Entonces
            Escribir "¡Error! Debe ingresar un número natural."
        FinSi
    Hasta Que n >= 1
    
    factorial <- 1
    i <- 1
    
    Mientras i <= n Hacer
        factorial <- factorial * i
        i <- i + 1
    FinMientras
    
    Escribir "El factorial de ", n ," es: ", factorial
FinAlgoritmo



# Prueba de Escritorio:

| n | i | factorial | Operación | Condición | Salida |
|---|---|-----------|---------------------|-----------|--------|
| 5 | **1** | **1** | factorial = 1, i = 1 | - | - |
| 5 | 1 | 1 | - | 1 <= 5  | Entra al ciclo |
| 5 | 1 | 1 | **1 × 1 = 1** | - | - |
| 5 | **2** | 1 | i = 1 + 1 = **2** | - | - |
| 5 | 2 | 1 | - | 2 <= 5  | Entra al ciclo |
| 5 | 2 | 1 | **1 × 2 = 2** | - | factorial = 2 |
| 5 | **3** | 2 | i = 2 + 1 = **3** | - | - |
| 5 | 3 | 2 | - | 3 <= 5  | Entra al ciclo |
| 5 | 3 | 2 | **2 × 3 = 6** | - | factorial = 6 |
| 5 | **4** | 6 | i = 3 + 1 = **4** | - | - |
| 5 | 4 | 6 | - | 4 <= 5  | Entra al ciclo |
| 5 | 4 | 6 | **6 × 4 = 24** | - | factorial = 24 |
| 5 | **5** | 24 | i = 4 + 1 = **5** | - | - |
| 5 | 5 | 24 | - | 5 <= 5  | Entra al ciclo |
| 5 | 5 | 24 | **24 × 5 = 120** | - | factorial = 120 |
| 5 | **6** | 120 | i = 5 + 1 = **6** | - | - |
| 5 | 6 | 120 | - | 6 <= 5  |  |
| 5 | - | 120 | **5! = 1 × 2 × 3 × 4 × 5 = 120** | - | **El factorial de 5 es: 120** |




