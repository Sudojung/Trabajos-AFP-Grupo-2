Algoritmo PuntosEnCircunferencias
    Definir cant, i, dentro Como Entero
    Definir a, b, distC1, distC2 Como Real
    
    // Cantidad total de puntos a evaluar
    Escribir "¿Cuántos puntos desea evaluar?"
    Leer cant
    
    dentro <- 0 // Contador de puntos que caen en las áreas
    
    // Para leer y evaluar cada punto
    Para i <- 1 Hasta cant Hacer
        Escribir "--- Punto ", i, " ---"
        Escribir "Ingrese coordenada X:"
        Leer a
        Escribir "Ingrese coordenada Y:"
        Leer b
        
        // Calculamos la posición del punto respecto a cada centro
        distC1 <- (a - 5)^2 + (b - 4)^2
        distC2 <- (a + 5)^2 + (b - 4)^2
        
        // Evaluamos si está dentro de c1 O dentro de c2
        Si distC1 <= 4 O distC2 <= 9 Entonces
            Escribir "  -> ¡El punto está dentro!"
            dentro <- dentro + 1
        SiNo
            Escribir "  -> El punto está fuera."
        FinSi
        
    FinPara
    
    Escribir "--------------------------------------------------"
    Escribir "Total de puntos dentro de las circunferencias: ", dentro
    
FinAlgoritmo
