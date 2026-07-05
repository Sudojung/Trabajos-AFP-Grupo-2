# Ejercicio 21:

Elabore un programa que lea un número entero y escriba el número resultante de invertir sus cifras.

# Algoritmo:

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
# Prueba de Escritorio:

| Paso | num | resto | invertido | ¿Qué pasa? |
|---|---:|---:|---:|---|
| Inicio | 1234 | - | 0 | Se lee el número y se inicia invertido en 0. |
| 1 | 1234 | 4 | 4 | Se toma el último dígito: 4. |
| 2 | 123 | 4 | 4 | Se quita el último dígito del número. |
| 3 | 123 | 3 | 43 | Se toma el siguiente dígito: 3 y se agrega al invertido. |
| 4 | 12 | 3 | 43 | Se quita el último dígito del número. |
| 5 | 12 | 2 | 432 | Se toma el siguiente dígito: 2 y se agrega al invertido. |
| 6 | 1 | 2 | 432 | Se quita el último dígito del número. |
| 7 | 1 | 1 | 4321 | Se toma el último dígito: 1 y se agrega al invertido. |
| Fin | 0 | - | 4321 | Ya no quedan más cifras. Resultado final. |
