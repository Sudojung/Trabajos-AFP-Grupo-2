Algoritmo  Suma_Cuadrados
    Definir n, i, suma Como Entero
    
    // Validación de entrada
    Repetir
        Escribir "Ingrese un número natural (mayor que 0):"
        Leer n
        Si n <= 0 Entonces
            Escribir "Error: debe ingresar un número natural positivo."
        FinSi
    Hasta Que n > 0
    
    suma <- 0
    
    Para i <- 1 Hasta n Con Paso 1 Hacer
        suma <- suma + (i * i)
    FinPara
    
    Escribir "La suma de los cuadrados de los ", n, " primeros números naturales es: ", suma
FinAlgoritmo
