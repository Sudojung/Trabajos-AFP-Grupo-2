Algoritmo DiferenciaMedias
    Definir M, i, x Como Entero
    Definir suma_inversas, producto, armonica, geometrica Como Real
    
    Escribir "Ingrese la cantidad de numeros a evaluar (M):"
    Leer M
    
    Si M <= 0 Entonces
        Escribir "Debe ingresar una cantidad mayor a 0."
    Sino
        suma_inversas <- 0
        producto <- 1
        
        Para i <- 1 Hasta M Hacer
            Escribir "Ingrese el numero ", i, ":"
            Leer x
            
            
            // si en caso nos diga que pasa si pongo cero o negativos se escribe que
            Si x <= 0 Entonces
                Escribir "Error: Solo se admiten numeros enteros POSITIVOS (mayores a 0)."
                i <- M + 1 // Forzar salida del bucle
            Sino
                suma_inversas <- suma_inversas + (1.0 / x)
                producto <- producto * x
            FinSi
        FinPara
        
        // vemos si no hay errores
        Si x > 0 Entonces
            armonica <- M / suma_inversas
            geometrica <- producto ^ (1.0 / M)
            
            Escribir "Media Armonica: ", armonica
            Escribir "Media Geometrica: ", geometrica
            Escribir "Diferencia (Valor Absoluto): ", ABS(armonica - geometrica)
        FinSi
    FinSi
FinAlgoritmo