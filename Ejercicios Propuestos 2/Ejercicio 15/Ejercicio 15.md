# Ejercicio 15:
Escribir un algoritmo que, dados dos intervalos cerrados [a,b] y [c, d] de la recta real, devuelva la 
interseccion de ambos intervalos.


# Algoritmo:

Algoritmo InterseccionDeIntervalos

    Definir A, B, C, D Como Real
    Definir maxInicio, minFin Como Real
    
    Repetir
        Escribir "Primer Intervalo [a, b] "
        Escribir "Ingrese el valor de inicio (a):"
        Leer A
        Escribir "Ingrese el valor de fin (b):"
        Leer B
        
        Si A > B Entonces
            Escribir "¡Error! El inicio A no puede ser mayor que el fin B."
            Escribir "--------------------------------------------------"
        FinSi
    Hasta Que A <= B
    
	
    Repetir
        Escribir "Segundo Intervalo [c, d] "
        Escribir "Ingrese el valor de inicio (c):"
        Leer C
        Escribir "Ingrese el valor de fin (d):"
        Leer D
        
        Si C > D Entonces
            Escribir "¡Error! El inicio C no puede ser mayor que el fin D."
            Escribir "--------------------------------------------------"
        FinSi
    Hasta Que C <= D
    

    
    // Encontrar el inicio de la intersección (el MÁXIMO entre a y c)
    Si A > C Entonces
        maxInicio <- A
    SiNo
        maxInicio <- C
    FinSi
    
    // Encontrar el fin de la intersección (el MÍNIMO entre b y d)
    Si B < D Entonces
        minFin <- B
    SiNo
        minFin <- D
    FinSi
    
    
    Escribir "--------------------------------------------------"
    // Evaluamos si realmente chocan o están separados
    Si maxInicio <= minFin Entonces
        Escribir "La intersección de los intervalos es: [", maxInicio, " , ", minFin, "]"
    SiNo
        Escribir "Los intervalos no se cruzan."
    FinSi
    Escribir "--------------------------------------------------"
    
FinAlgoritmo

# Prueba de Escritorio:

| Caso | a | b | c | d | maxInicio = max(a,c) | minFin = min(b,d) | ¿maxInicio ≤ minFin? | Resultado |
|---|---:|---:|---:|---:|---:|---:|---|---|
| 1. Intersección típica | 1 | 5 | 3 | 7 | 3 | 5 | Sí, porque 3 ≤ 5 | [3, 5] |
| 2. Uno dentro de otro | 2 | 10 | 4 | 6 | 4 | 6 | Sí, porque 4 ≤ 6 | [4, 6] |
| 3. Se cruzan en un punto | 0 | 2 | 2 | 5 | 2 | 2 | Sí, porque 2 ≤ 2 | [2, 2] |
| 4. No se cruzan | -3 | 1 | 2 | 4 | 2 | 1 | No, porque 2 ≤ 1 es falso | No hay intersección |
| 5. Intervalos iguales | 4 | 4 | 4 | 4 | 4 | 4 | Sí, porque 4 ≤ 4 | [4, 4] |
