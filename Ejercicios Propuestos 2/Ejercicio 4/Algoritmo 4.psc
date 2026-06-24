Algoritmo  Numeros_Gemelos
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
FinAlgoritmo
