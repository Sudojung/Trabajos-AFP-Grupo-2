# Ejercicio 5:

Calcule la suma y producto de fracciones, antes de realizar las operaciones es necesario que las dos 
fracciones estén simplificadas a su mínima expresión. 


# Algoritmo:

Funcion maxDiv <- SacarMCD(a, b)

    Definir maxDiv, temp Como Entero
    Mientras b <> 0 Hacer
        temp <- b
        b <- a MOD b
        a <- temp
    FinMientras
    maxDiv <- a
FinFuncion

Algoritmo Fracciones

    Definir num1, den1, num2, den2 Como Entero
    Definir numSuma, denSuma, numProd, denProd, mcd Como Entero
    
    // Los datos
    Escribir "Fracción 1 - Numerador:"
    Leer num1
    Escribir "Fracción 1 - Denominador:"
    Leer den1
    
    Escribir "Fracción 2 - Numerador:"
    Leer num2
    Escribir "Fracción 2 - Denominador:"
    Leer den2
    
    Si den1 = 0 O den2 = 0 Entonces
        Escribir "Error: El denominador no puede ser cero."
    SiNo
        // Simplificamos ambas fracciones antes de operar
        mcd <- SacarMCD(num1, den1)
        num1 <- Trunc(num1 / mcd)
        den1 <- Trunc(den1 / mcd)
        
        mcd <- SacarMCD(num2, den2)
        num2 <- Trunc(num2 / mcd)
        den2 <- Trunc(den2 / mcd)
        
        Escribir "Fracciones listas para operar: ", num1, "/", den1, " y ", num2, "/", den2
        
        // Hacemos la SUMA
        numSuma <- (num1 * den2) + (num2 * den1)
        denSuma <- den1 * den2
        
        // Simplificamos la suma
        mcd <- SacarMCD(numSuma, denSuma)
        numSuma <- Trunc(numSuma / mcd)
        denSuma <- Trunc(denSuma / mcd)
        
        // Hacemos el PRODUCTO
        numProd <- num1 * num2
        denProd <- den1 * den2
        
        // Simplificamos el producto
        mcd <- SacarMCD(numProd, denProd)
        numProd <- Trunc(numProd / mcd)
        denProd <- Trunc(denProd / mcd)
        
        // Resultados
        Escribir "Resultado de la SUMA: ", numSuma, "/", denSuma
        Escribir "Resultado del PRODUCTO: ", numProd, "/", denProd
    FinSi
FinAlgoritmo


# Prueba de Escritorio:

Suma y Producto de 12/18 y 15/25

| Operación | Fracción 1 | Fracción 2 | MCD | Resultado | - |
|-----------|-----------|-----------|-----|-----------|-------------|
| Entrada | 12/18 | 15/25 | - | - | Fracciones iniciales |
| Simplificar F1 | MCD(12,18) = 6 | - | 6 | 2/3 | 12/6=2, 18/6=3 |
| Simplificar F2 | - | MCD(15,25) = 5 | 5 | 3/5 | 15/5=3, 25/5=5 |
| Listas para operar | **2/3** | **3/5** | - | - | Fracciones simplificadas |
| SUMA: Numerador | (2×5) + (3x3) = 10 + 9 = 19 | - | - | 19 | Fórmula: (num1×den2) + (num2xden1) |
| SUMA: Denominador | 3 x 5 = 15 | - | - | 15 | Fórmula: den1 × den2 |
| Simplificar Suma | MCD(19,15) = 1 | - | 1 | 19/15 | Ya está simplificada |
| PRODUCTO: Numerador | 2 x 3 = 6 | - | - | 6 | Fórmula: num1 x num2 |
| PRODUCTO: Denominador | 3 x 5 = 15 | - | - | 15 | Fórmula: den1 x den2 |
| Simplificar Producto | MCD(6,15) = 3 | - | 3 | 2/5 | 6/3=2, 15/3=5 |
