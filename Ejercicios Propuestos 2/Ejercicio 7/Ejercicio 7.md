# Ejercicio 7:

Modifique el programa anterior para que permita un número máximo de intentos (dado por la 
constante MAXINTENTOS, superados los cuales terminará imprimiendo el mensaje "Lo siento, ha 
perdido". 


# Algoritmo:

Algoritmo CompararFechasAleatorio

    Definir dia1, mes1, año1 Como Entero
    Definir dia2, mes2, año2 Como Entero
    Definir maxInt, intentos Como Entero
    
    // El programa elige un número al azar entre 1 y 10 automáticamente
    maxInt <- Aleatorio(1, 10)
    intentos <- 0    
    
    Escribir "¡El sistema ha asignado el límite de intentos!"
    Escribir "Para esta programa tienes un máximo de: ", maxInt, " intentos."
    Escribir "--------------------------------------------------"
    
    Escribir "Ingrese el DÍA de la primera fecha (Escriba 0 para salir):"
    Leer dia1
    
    Mientras dia1 <> 0 Y intentos < maxInt Hacer
        
        Escribir "Ingrese el MES de la primera fecha:"
        Leer mes1
        Escribir "Ingrese el AÑO de la primera fecha:"
        Leer año1
        
        Escribir "--- Segunda Fecha ---"
        Escribir "Ingrese el DÍA de la segunda fecha:"
        Leer dia2
        Escribir "Ingrese el MES de la segunda fecha:"
        Leer mes2
        Escribir "Ingrese el AÑO de la segunda fecha:"
        Leer año2
        
        Escribir "--------------------------------------------------"
        
        // Comparación de las fechas
        Si año1 < año2 Entonces
            Escribir "-> La primera fecha (", dia1, "/", mes1, "/", año1, ") es anterior."
        SiNo
            Si año1 > año2 Entonces
                Escribir "-> La segunda fecha (", dia2, "/", mes2, "/", año2, ") es anterior."
            SiNo
                Si mes1 < mes2 Entonces
                    Escribir "-> La primera fecha es anterior."
                SiNo
                    Si mes1 > mes2 Entonces
                        Escribir "-> La segunda fecha es anterior."
                    SiNo
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
        
        intentos <- intentos + 1
        
        // Solo pide otra fecha si no se ha alcanzado el límite aleatorio
        Si intentos < maxInt Entonces
            Escribir "Ingrese el DÍA de la siguiente primera fecha (Escriba 0 para salir):"
            Leer dia1
        FinSi
        
    FinMientras
    
    // Intento final
    Si intentos >= maxInt Entonces
        Escribir "Lo siento, se acabó sus intentos."
    SiNo
        Escribir "Programa finalizado exitosamente."
    FinSi
    
FinAlgoritmo



# Prueba de Escritorio


- Ejemplo 1: Límite Aleatorio = 3, donde el usuario completa 2 comparaciones y se sale

| Acción | dia1 | mes1 | año1 | dia2 | mes2 | año2 | Intentos | maxInt | Condición | Resultado |
|--------|------|------|------|------|------|------|----------|--------|-----------|-----------|
| Sistema genera límite | - | - | - | - | - | - | 0 | **3** | - | Límite asignado |
| Pide F1 día | 12 | - | - | - | - | - | 0 | 3 | dia1 no es 0 | Continúa |
| Completa F1 | 12 | 5 | 2021 | - | - | - | 0 | 3 | - | - |
| Pide F2 | - | - | - | 8 | 3 | 2021 | 0 | 3 | - | - |
| Compara fechas | - | - | 2021 | - | - | 2021 | 0 | 3 | mes1 > mes2 |  **F2 anterior** |
| Incrementa intentos | - | - | - | - | - | - | **1** | 3 | intentos < maxInt | Pide siguiente |
| Pide siguiente F1 día | 20 | - | - | - | - | - | 1 | 3 | dia1 no es 0 | Continúa |
| Completa F1 | 20 | 7 | 2022 | - | - | - | 1 | 3 | - | - |
| Pide F2 | - | - | - | 15 | 9 | 2022 | 1 | 3 | - | - |
| Compara fechas | - | - | 2022 | - | - | 2022 | 1 | 3 | mes1 < mes2 |  **F1 anterior** |
| Incrementa intentos | - | - | - | - | - | - | **2** | 3 | intentos < maxInt | Pide siguiente |
| Usuario quiere salir | 0 | - | - | - | - | - | 2 | 3 | dia1 = 0 | Sale del ciclo |
| Verifica límite | - | - | - | - | - | - | 2 | 3 | intentos < maxInt |  Exitoso |


---

- Ejemplo 2:  Límite Aleatorio = 2, donde el usuario usa todos sus intentos

| Acción | dia1 | mes1 | año1 | dia2 | mes2 | año2 | Intentos | maxInt | Condición | Resultado |
|--------|------|------|------|------|------|------|----------|--------|-----------|-----------|
| Sistema genera límite | - | - | - | - | - | - | 0 | **2** | - | Límite asignado |
| Pide F1 día | 5 | - | - | - | - | - | 0 | 2 | dia1 no es 0 | Continúa |
| Completa F1 | 5 | 1 | 2020 | - | - | - | 0 | 2 | - | - |
| Pide F2 | - | - | - | 10 | 1 | 2020 | 0 | 2 | - | - |
| Compara fechas | - | - | 2020 | - | - | 2020 | 0 | 2 | dia1 < dia2 |  **F1 anterior** |
| Incrementa intentos | - | - | - | - | - | - | **1** | 2 | intentos < maxInt | Pide siguiente |
| Pide siguiente F1 día | 25 | - | - | - | - | - | 1 | 2 | dia1 no es 0 | Continúa |
| Completa F1 | 25 | 6 | 2023 | - | - | - | 1 | 2 | - | - |
| Pide F2 | - | - | - | 30 | 6 | 2023 | 1 | 2 | - | - |
| Compara fechas | - | - | 2023 | - | - | 2023 | 1 | 2 | dia1 < dia2 |  **F1 anterior** |
| Incrementa intentos | - | - | - | - | - | - | **2** | 2 | intentos = maxInt | NO pide siguiente |
| Sale del ciclo | - | - | - | - | - | - | 2 | 2 | dia1 <> 0 AND intentos < maxInt es falso | Sale |
| Verifica límite | - | - | - | - | - | - | 2 | 2 | intentos >= maxInt | Perdió |

