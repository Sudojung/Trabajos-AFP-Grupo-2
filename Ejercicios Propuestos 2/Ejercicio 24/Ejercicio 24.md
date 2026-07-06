# Ejercicio 24:

La secuencia de los números Fibonacci empieza con los enteros: 1, 1, 2, 3, 5, 8, 13, 21, ……. donde 
cada número después de los primeros dos es la suma de los dos números anteriores. Escribir un algoritmo 
que pida el ingreso de un número natural primo y determine si es un número Fibonacci. Si lo es imprima 
la terna del Fibonacci anterior al número, el número y el siguiente número Fibonacci.

# Algoritmo:

// Función para determinar si lo que ponemos es primo o no
Funcion es_primo <- VerificarPrimo(num)
    Definir es_primo Como Logico
    Definir i Como Entero
    es_primo <- Verdadero
    
    // El 0 y el 1 no son números primos
    Si num <= 1 Entonces
        es_primo <- Falso
    SiNo
        // Dividimos el número por todos los anteriores para ver si tiene divisores
        Para i <- 2 Hasta num - 1 Con Paso 1 Hacer
            Si num MOD i == 0 Entonces
                es_primo <- Falso
            FinSi
        FinPara
    FinSi
FinFuncion

Algoritmo FibonacciPrimo
    Definir numero_ingresado, a, b, c, siguiente Como Entero
    
    Escribir "Ingrese un numero natural primo:"
    Leer numero_ingresado
    
    // CASO peculiar investigado: Validamos que el usuario realmente ingresó un número primo
    Si No VerificarPrimo(numero_ingresado) Entonces
        Escribir "Error: El numero ingresado no es primo. Intente con 2, 3, 5, 13, etc."
    SiNo
        a <- 1
        b <- 1
        
        // Generamos la secuencia de Fibonacci hasta alcanzar o pasarnos del numero
        Mientras b < numero_ingresado Hacer
            c <- a + b
            a <- b
            b <- c
        FinMientras
        
        // Si al detenernos 'b' es igual al numero ingresado, es porque sí pertenece a la secuencia
        Si b == numero_ingresado Entonces
            siguiente <- a + b
            Escribir "¡enhora buena mi kin hallaste  un numero Fibonacci!"
            Escribir "La terna es: ", a, ", ", b, ", ", siguiente
        SiNo
            Escribir "El numero ", numero_ingresado, " es primo, pero NO es un numero Fibonacci."
        FinSi
    FinSi
FinAlgoritmo


# Prueba de Escritorio:

- con 13:

| Paso | numero_ingresado | a | b | c | siguiente | ¿Qué ocurre? |
|---|---:|---:|---:|---:|---:|---|
| Inicio | 13 | - | - | - | - | Se ingresa el número. |
| Validación primo | 13 | - | - | - | - | 13 es primo, entonces continúa. |
| Inicialización | 13 | 1 | 1 | - | - | Se inicia Fibonacci con 1, 1. |
| 1 | 13 | 1 | 1 | 2 | - | Como 1 < 13, se calcula c = 1 + 1 = 2. |
| 2 | 13 | 1 | 2 | 3 | - | Se actualiza: a = 1, b = 2. |
| 3 | 13 | 2 | 3 | 5 | - | Se calcula el siguiente: 2 + 3 = 5. |
| 4 | 13 | 3 | 5 | 8 | - | Se actualiza la secuencia. |
| 5 | 13 | 5 | 8 | 13 | - | Se calcula el siguiente: 5 + 8 = 13. |
| Fin del while | 13 | 8 | 13 | 13 | - | b ya es igual a 13, se detiene el ciclo. |
| Verificación final | 13 | 8 | 13 | 13 | 21 | Como b = 13, sí pertenece a Fibonacci. |
| Resultado | 13 | 8 | 13 | 13 | 21 | La terna es: 8, 13, 21. |


- con 17:

| Paso | numero_ingresado | a | b | c | siguiente | ¿Qué ocurre? |
|---|---:|---:|---:|---:|---:|---|
| Inicio | 17 | - | - | - | - | Se ingresa el número. |
| Validación primo | 17 | - | - | - | - | 17 es primo, entonces continúa. |
| Inicialización | 17 | 1 | 1 | - | - | Se inicia Fibonacci con 1, 1. |
| 1 | 17 | 1 | 1 | 2 | - | Se calcula c = 1 + 1 = 2. |
| 2 | 17 | 1 | 2 | 3 | - | Se actualiza: a = 1, b = 2. |
| 3 | 17 | 2 | 3 | 5 | - | Se calcula c = 2 + 3 = 5. |
| 4 | 17 | 3 | 5 | 8 | - | Se actualiza la secuencia. |
| 5 | 17 | 5 | 8 | 13 | - | Se calcula c = 5 + 8 = 13. |
| 6 | 17 | 8 | 13 | 21 | - | Se calcula c = 8 + 13 = 21. |
| Fin del while | 17 | 13 | 21 | 21 | - | b ya pasó a 21, que es mayor que 17. |
| Verificación final | 17 | 13 | 21 | 21 | - | Como b no es igual a 17, no pertenece a Fibonacci. |
| Resultado | 17 | 13 | 21 | 21 | - | El número 17 es primo, pero NO es Fibonacci. |
