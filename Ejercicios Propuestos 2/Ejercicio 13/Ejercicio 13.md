# Ejercicio 13:

Se desea calcular independiente la suma de los números pares e impares comprendidos 
entre 1 y 200. 

# Algoritmo:

Algoritmo SumaParesImpares

    Definir inicio, final, i Como Entero
    Definir sumaPar, sumaImp Como Entero
    
    sumaPar <- 0
    sumaImp <- 0
    
    Escribir "Ingrese el número de INICIO:"
    Leer inicio
    
    Escribir "Ingrese el número de FIN:"
    Leer final
    
    Escribir "--------------------------------------------------"
    
    Para i <- inicio Hasta final Hacer
        
        // para saber si un número es par o impar
        Si i MOD 2 = 0 Entonces
            // Si el residuo es 0, es PAR. Lo guardamos en los pares.
            sumaPar <- sumaPar + i 
        SiNo
            // Si el residuo no es 0, es IMPAR. Lo guardamos en los impares.
            sumaImp <- sumaImp + i 
        FinSi
        
    FinPara
    
    //  resultados
    Escribir "Rango: del ", inicio, " al ", final
    Escribir "-> La suma total de los números PARES es: ", sumaPar
    Escribir "-> La suma total de los números IMPARES es: ", sumaImp
    Escribir "--------------------------------------------------"
    
FinAlgoritmo



# Prueba de Escritorio:

| i | i MOD 2 | ¿Par/Impar? | Operación sumaPar | sumaPar Acum | Operación sumaImp | sumaImp Acum |
|---|---------|------------|-------------------|--------------|-------------------|--------------|
| 1 | 1 | Impar | - | 0 | sumaImp = 0 + 1 | **1** |
| 2 | 0 | Par | sumaPar = 0 + 2 | **2** | - | 1 |
| 3 | 1 | Impar | - | 2 | sumaImp = 1 + 3 | **4** |
| 4 | 0 | Par | sumaPar = 2 + 4 | **6** | - | 4 |
| 5 | 1 | Impar | - | 6 | sumaImp = 4 + 5 | **9** |
| 6 | 0 | Par | sumaPar = 6 + 6 | **12** | - | 9 |
| 7 | 1 | Impar | - | 12 | sumaImp = 9 + 7 | **16** |
| 8 | 0 | Par | sumaPar = 12 + 8 | **20** | - | 16 |
| 9 | 1 | Impar | - | 20 | sumaImp = 16 + 9 | **25** |
| 10 | 0 | Par | sumaPar = 20 + 10 | **30** | - | 25 |
| 11 | 1 | Impar | - | 30 | sumaImp = 25 + 11 | **36** |
| 12 | 0 | Par | sumaPar = 30 + 12 | **42** | - | 36 |
| 13 | 1 | Impar | - | 42 | sumaImp = 36 + 13 | **49** |
| 14 | 0 | Par | sumaPar = 42 + 14 | **56** | - | 49 |
| 15 | 1 | Impar | - | 56 | sumaImp = 49 + 15 | **64** |
| 16 | 0 | Par | sumaPar = 56 + 16 | **72** | - | 64 |
| 17 | 1 | Impar | - | 72 | sumaImp = 64 + 17 | **81** |
| 18 | 0 | Par | sumaPar = 72 + 18 | **90** | - | 81 |
| 19 | 1 | Impar | - | 90 | sumaImp = 81 + 19 | **100** |
| 20 | 0 | Par | sumaPar = 90 + 20 | **110** | - | 100 |

**Resultados:**
- Suma PARES (2+4+6+8+10+12+14+16+18+20) = **110**
- Suma IMPARES (1+3+5+7+9+11+13+15+17+19) = **100**
