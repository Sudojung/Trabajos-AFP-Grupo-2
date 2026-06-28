# Algoritmo:

INICIO
    Definir limite, i, factorial Como Entero
    Repetir
        Escribir "Ingrese un número entero positivo (mayor o igual a 1):"
        Leer limite
        
        // Si el número es incorrecto, se muestra error
        Si limite < 1 Entonces
            Escribir "¡Error! El número ingresado no es válido."
            Escribir "Por favor, intente de nuevo con un número positivo."
        FinSi
    Hasta Que limite >= 1
    
    factorial <- 1
    Escribir "Los factoriales hasta el ", limite, " son:"
    
    Para i <- 1 Hasta limite Hacer
        factorial <- factorial * i
        Escribir "El factorial de ", i, " es: ", factorial
    FinPara   
FIN


# Prueba de escritorio:

Entrada: limite = 4


|   i  | factorial=factorial * i | Resultados |
|------|-----------------------|--------------------|
|  i=0 | factorial=1 | — |
|  i=1 | factorial = 1 * 1 = 1 | "El factorial de 1 es: 1" |
|  i=2 | factorial = 1 * 2 = 2 | "El factorial de 2 es: 2" |
|  i=3 | factorial = 2 * 3 = 6 | "El factorial de 3 es: 6" |
|  i=4 | factorial = 6 * 4 = 24 | "El factorial de 4 es: 24" |
