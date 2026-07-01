# Ejercicio 6:

Escriba un programa que lea dos fechas dadas por un día, mes y año e indique cuál de ellas es anterior 
en el tiempo a la otra. El programa seguirá leyendo pares de fechas hasta que se introduzca un valor 0 
como día de la primera fecha (en tal caso, no seguirá leyendo dicha fecha). 

# Algoritmo:

INICIO

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
FIN


# Prueba de Escritorio:

- En caso de: Primera fecha anterior a la segunda

| Operación | Día 1 | Mes 1 | Año 1 | Día 2 | Mes 2 | Año 2 | Comparación | Resultado |
|-----------|-------|-------|-------|-------|-------|-------|------------|-----------|
| Entrada F1 | 15 | 3 | 2020 | - | - | - | - | - |
| Entrada F2 | - | - | - | 20 | 8 | 2023 | - | - |
| Comparar años | - | - | 2020 | - | - | 2023 | 2020 < 2023 |  **F1 anterior** |

**Resultado:** La primera fecha (15/3/2020) es anterior.

---

- En caso de: Segunda fecha anterior a la primera

| Operación | Día 1 | Mes 1 | Año 1 | Día 2 | Mes 2 | Año 2 | Comparación | Resultado |
|-----------|-------|-------|-------|-------|-------|-------|------------|-----------|
| Entrada F1 | 10 | 5 | 2022 | - | - | - | - | - |
| Entrada F2 | - | - | - | 5 | 2 | 2022 | - | - |
| Comparar años | - | - | 2022 | - | - | 2022 | 2022 = 2022 | Años iguales |
| Comparar meses | - | 5 | - | - | 2 | - | 5 > 2 | ✓ **F2 anterior** |

**Resultado:** La segunda fecha (5/2/2022) es anterior.

---

- En caso de: Fechas iguales (mismo día)

| Operación | Día 1 | Mes 1 | Año 1 | Día 2 | Mes 2 | Año 2 | Comparación | Resultado |
|-----------|-------|-------|-------|-------|-------|-------|------------|-----------|
| Entrada F1 | 25 | 12 | 2021 | - | - | - | - | - |
| Entrada F2 | - | - | - | 25 | 12 | 2021 | - | - |
| Comparar años | - | - | 2021 | - | - | 2021 | 2021 = 2021 | Años iguales |
| Comparar meses | - | 12 | - | - | 12 | - | 12 = 12 | Meses iguales |
| Comparar días | 25 | - | - | 25 | - | - | 25 = 25 | ✓ **Fechas iguales** |

**Resultado:** Ambas fechas son exactamente iguales.









