Algoritmo CompararFechas
    Definir dia1, mes1, año1 Como Entero
    Definir dia2, mes2, año2 Como Entero
    
    Escribir "Ingrese el DÍA de la primera fecha (Escriba 0 para salir):"
    Leer dia1
    
    // El ciclo se repite MIENTRAS el día 1 no sea cero
    Mientras dia1 <> 0 Hacer
        // Como el día no es 0, terminamos de pedir la primera fecha
        Escribir "Ingrese el MES de la primera fecha:"
        Leer mes1
        Escribir "Ingrese el AÑO de la primera fecha:"
        Leer año1
        
        // Pedimos la segunda fecha completa
        Escribir "--- Segunda Fecha ---"
        Escribir "Ingrese el DÍA de la segunda fecha:"
        Leer dia2
        Escribir "Ingrese el MES de la segunda fecha:"
        Leer mes2
        Escribir "Ingrese el AÑO de la segunda fecha:"
        Leer año2
        
        Escribir "--------------------------------------------------"
        
        //  Comparación de mayor a menor
        Si año1 < año2 Entonces
            Escribir "-> La primera fecha (", dia1, "/", mes1, "/", año1, ") es anterior."
        SiNo
            Si año1 > año2 Entonces
                Escribir "-> La segunda fecha (", dia2, "/", mes2, "/", año2, ") es anterior."
            SiNo
                // Si los años son iguales. Comparamos los meses:
                Si mes1 < mes2 Entonces
                    Escribir "-> La primera fecha es anterior."
                SiNo
                    Si mes1 > mes2 Entonces
                        Escribir "-> La segunda fecha es anterior."
                    SiNo
                        // Si los años y meses son iguales. Comparamos los días:
                        Si dia1 < dia2 Entonces
                            Escribir "-> La primera fecha es anterior."
                        SiNo
                            Si dia1 > dia2 Entonces
                                Escribir "-> La segunda fecha es anterior."
                            SiNo
                                Escribir "-> Ambas fechas son exactamente iguales."
                            FinSi
                        FinSi
                    FinSi
                FinSi
            FinSi
        FinSi
        
        Escribir "--------------------------------------------------"
        // Volvemos a pedir el primer día para ver si el ciclo continúa o se detiene
        Escribir "Ingrese el DÍA de la siguiente primera fecha (Escriba 0 para salir):"
        Leer dia1
        
    FinMientras
    
    Escribir "Programa finalizado exitosamente."
FinAlgoritmo
