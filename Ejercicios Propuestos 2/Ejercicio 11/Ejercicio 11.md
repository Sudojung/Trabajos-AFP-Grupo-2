# Ejercicio 11

A partir de un conjunto de puntos, enteros o reales, calcular el número de puntos que están situados 
dentro de las áreas delimitadas por las circunferencias c1 = (centro en (5,4) radio 2) y c2 = (centro en (-5,
4) radio 3), incluyendo sus puntos fronterizos.


# Algoritmo:

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

# Prueba de Escritorio:

| Circunferencia | Centro | Radio | Radio² | Ecuación |
|---|---|---|---|---|
| C1 | (5, 4) | 2 | 4 | (x - 5)² + (y - 4)² ≤ 4 |
| C2 | (-5, 4) | 3 | 9 | (x + 5)² + (y - 4)² ≤ 9 |


| Punto | X | Y | distC1 = (x-5)² + (y-4)² | ¿distC1 ≤ 4? | distC2 = (x+5)² + (y-4)² | ¿distC2 ≤ 9? | ¿Está dentro? | dentro | Salida |
|-------|---|---|--------------------------|--------------|--------------------------|--------------|---------|--------|--------|
| 1 | 5 | 4 | (5-5)² + (4-4)² = 0+0 = **0** |  SI | (-5+5)² + (4-4)² = 0+0 = **0** |  SI | **SI** | **1** | ¡El punto está dentro! |
| 2 | 7 | 4 | (7-5)² + (4-4)² = 4+0 = **4** |  SI (frontera) | (-5+7)² + (4-4)² = 4+0 = **4** |  SÍ | **SI** | **2** | ¡El punto está dentro! |
| 3 | 3 | 4 | (3-5)² + (4-4)² = 4+0 = **4** |  SI (frontera) | (-5+3)² + (4-4)² = 4+0 = **4** |  SÍ | **SI** | **3** | ¡El punto está dentro! |
| 4 | 8 | 4 | (8-5)² + (4-4)² = 9+0 = **9** |  NO | (8+5)² + (4-4)² = 169 + 0 = **169** |  NO | **NO** | **3** | El punto está fuera. |
| 5 | 10 | 4 | (10-5)² + (4-4)² = 25+0 = **25** |  NO | (-5+10)² + (4-4)² = 25+0 = **25** |  NO | **NO** | 4 | El punto está fuera. |
| 6 | 5 | 6 | (5-5)² + (6-4)² = 0+4 = **4** |  SI (frontera) | (-5+5)² + (6-4)² = 0+4 = **4** |  SI | **SI** | **5** | ¡El punto está dentro! |

**Resultado:** Total de puntos dentro de las circunferencias: **4**
