# Ejercicio 4:

Un número gemelo es aquel cuya primera mitad de dígitos es igual a la segunda mitad. Si la cantidad 
de dígitos es impar, no deberá tomarse en cuenta el dígito del medio Ej. 123123. Hacer un programa para 
contar los números gemelos de una secuencia de números de entrada.

# Algortitmo:

INICIO

    Definir n, i, mitad, tam Como Entero
    Definir numero, primera, segunda Como Cadena
    Definir contador Como Entero
    
    contador <- 0
    
    Escribir "Ingrese la cantidad de números en la secuencia:"
    Leer n
    
    Para i <- 1 Hasta n Con Paso 1 Hacer
        Escribir "Ingrese el número ", i, ":"
        Leer numero
        
        tam <- Longitud(numero)
        mitad <- Trunc(tam / 2)
        
        Si tam MOD 2 = 0 Entonces
            // Caso par
            primera <- Subcadena(numero, 1, mitad)
            segunda <- Subcadena(numero, mitad+1, tam)
        SiNo
            // Caso impar: se ignora el dígito del medio
            primera <- Subcadena(numero, 1, mitad)
            segunda <- Subcadena(numero, mitad+2, tam)
        FinSi
        
        Si primera = segunda Entonces
            contador <- contador + 1
            Escribir numero ," : SI es número gemelo "
        SiNo
            Escribir numero , " : NO es número gemelo "
        FinSi
    FinPara
    
    Escribir "Cantidad total de números gemelos en la secuencia: ", contador
FIN

# Prueba de Escritorio:

| # | Número | Longitud | ¿Par o Impar? | Mitad | Primera Mitad | Segunda Mitad | ¿Gemelo? | Contador |
|---|--------|----------|-------------|-------|---------------|---------------|----------|----------|
| 1 | 123123 | 6 | Par | 3 | "123" | "123" |  SI | 1 |
| 2 | 4545 | 4 | Par | 2 | "45" | "45" | SI | 2 |
| 3 | 12345 | 5 | Impar | 2 | "12" | "45" | NO | 2 |
| 4 | 121 | 3 | Impar | 1 | "1" | "1" | SI | 3 |
| 5 | 1234 | 4 | Par | 2 | "12" | "34" | NO | 3 |
| 6 | 9999 | 4 | Par | 2 | "99" | "99" | SI | 4 |
| 7 | 12321 | 5 | Impar | 2 | "12" | "21" | NO | 4 |
