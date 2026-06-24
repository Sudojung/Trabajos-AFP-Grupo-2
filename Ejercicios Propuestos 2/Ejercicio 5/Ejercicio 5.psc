// Función para sacar el Máximo Común Divisor
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
