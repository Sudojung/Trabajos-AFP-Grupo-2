Funcion retorno <- calcular_seno(x, n)
    Definir retorno Como Real  
    Definir suma, termino, signo Como Real
    Definir i Como Entero
	
    suma <- x
    termino <- x
    signo <- -1
    
    // Calculamos los terminos siguientes. 
    // En lugar de usar factoriales gigantes que causan error,
    
    Para i <- 1 Hasta n - 1 Con Paso 1 Hacer
        termino <- termino * (x * x) / ((2 * i) * (2 * i + 1))
        suma <- suma + (signo * termino)
        signo <- -signo  // (+, -, +, -)
    FinPara
    
    retorno <- suma
FinFuncion

Algoritmo TablaTangentes
    Definir angulo, limite, paso_angulo Como Real
    Definir sen_x, cos_x, tan_x Como Real
    Definir n Como Entero
    
    n <- 10 // es lo que no solicitan
    angulo <- 0
    limite <- 2 * PI
    paso_angulo <- PI / 8
    
    Escribir "Angulo (rad) | Tangente"
    Escribir "------------------------"
    
    // se le suma 0.0001 al limite para por asi decirlo no haya errores
    Mientras angulo <= limite + 0.0001 Hacer
        sen_x <- calcular_seno(angulo, n)
        
        // Calculamos el coseno         
        cos_x <- Raiz(Abs(1 - (sen_x * sen_x)))
        
        // CASO 1:xd Ajuste del signo del coseno.
        // La raiz cuadrada siempre es positiva, pero el coseno es negativo      
        Si angulo > (PI / 2) Y angulo < (3 * PI / 2) Entonces
            cos_x <- -cos_x 
        FinSi
        
        // Caso 2 Division por cero.
        // En lugar de comparar "cos_x == 0", usamos un margen muy pequeño (0.00001)
        Si Abs(cos_x) < 0.00001 Entonces
            Escribir angulo, " | infinito"
        SiNo
            tan_x <- sen_x / cos_x
            Escribir angulo, " | ", tan_x
        FinSi
        
        angulo <- angulo + paso_angulo
    FinMientras
FinAlgoritmo