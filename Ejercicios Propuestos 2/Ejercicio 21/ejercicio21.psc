Algoritmo InvertirNumero
    Definir num, invertido, resto Como Entero
    Definir es_negativo Como Logico
    
    Escribir "Ingrese un numero entero:"
    Leer num
    
    invertido <- 0
    // si se da el caso de que el número es negativo, extraemos el signo
    // para trabajar con su valor absoluto y no tener errores en el módulo.
    es_negativo <- num < 0
    Si es_negativo Entonces
        num <- num * (-1)
    FinSi
    
    Mientras num > 0 Hacer
        resto <- num MOD 10
        invertido <- (invertido * 10) + resto
        num <- TRUNC(num / 10)
    FinMientras
    
    // Restauramos el signo negativo si correspondía
    Si es_negativo Entonces
        invertido <- invertido * (-1)
    FinSi
    
    Escribir "El numero invertido es: ", invertido
FinAlgoritmo