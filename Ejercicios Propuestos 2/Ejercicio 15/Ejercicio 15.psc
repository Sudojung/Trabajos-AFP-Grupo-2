Algoritmo InterseccionIntervalos

    Definir a, b, c, d Como Real
    Definir inicio, fin Como Real

    // Ingresamos el primer intervalo
    Escribir "Ingrese el extremo izquierdo del primer intervalo:"
    Leer a

    Escribir "Ingrese el extremo derecho del primer intervalo:"
    Leer b

    // Ingresamos el segundo intervalo
    Escribir "Ingrese el extremo izquierdo del segundo intervalo:"
    Leer c

    Escribir "Ingrese el extremo derecho del segundo intervalo:"
    Leer d

    // Calculamos el inicio de la intersección
    Si a > c Entonces
        inicio <- a
    SiNo
        inicio <- c
    FinSi

    // Calculamos el fin de la intersección
    Si b < d Entonces
        fin <- b
    SiNo
        fin <- d
    FinSi

    // Verificamos si existe intersección
    Si inicio <= fin Entonces
        Escribir "La intersección es: [", inicio, ", ", fin, "]"
    SiNo
        Escribir "Los intervalos no tienen intersección."
    FinSi

FinAlgoritmo
