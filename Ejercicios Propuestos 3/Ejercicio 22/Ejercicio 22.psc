Funcion invertido <- InvertirNumero(num)
    Definir invertido, digito Como Entero
    Definir esNegativo Como Logico
    
    invertido <- 0
    esNegativo <- Falso
    
    // Verificamos si el número es negativo
    Si num < 0 Entonces
        esNegativo <- Verdadero
        num <- num * (-1) 
    Fin Si
    
    // Proceso inversión
    Mientras num > 0 Hacer
        digito <- num MOD 10
        invertido <- (invertido * 10) + digito
        num <- trunc(num / 10)
    Fin Mientras
    
    // Si originalmente era negativo, le devolvemos el signo al resultado
    Si esNegativo Entonces
        invertido <- invertido * (-1) 
    Fin Si
FinFuncion

Algoritmo EjercicioInvertirNumero
    Definir numeroOriginal, resultado Como Entero
    
    Escribir "Ingrese un número entero (puede ser negativo):"
    Leer numeroOriginal
    
    // función que devuelve el valor calculado
    resultado <- InvertirNumero(numeroOriginal)
    
    Escribir "----------------------"
    Escribir "Número original: ", numeroOriginal
    Escribir "Número invertido: ", resultado
FinAlgoritmo
