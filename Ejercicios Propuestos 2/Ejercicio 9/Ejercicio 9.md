# Ejercicio 9:

Modifique el programa anterior para que imprima la tabla de multiplicar completa del 1 al 10.

# Algoritmo:

INICIO

    Definir inicio, fin, tope, i, j, resultado Como Entero
    
	// Rangos de las tablas:
    Escribir "¿Desde qué tabla desea iniciar?"
    Leer inicio
    
    Escribir "¿Hasta qué tabla desea llegar?"
    Leer final
    
    // Límite de la multiplicación
    Escribir "¿Hasta qué número desea multiplicar en cada tabla?"
    Leer tope
    
    Escribir "--------------------------------------------------"
    
	//  proceso de generar las tablas 
    Para i <- inicio Hasta final Hacer
        Escribir "========================="
        Escribir "      TABLA DEL ", i
        Escribir "========================"
        
       // proceso de las multiplicaciones
        Para j <- 1 Hasta tope Hacer
            resultado <- i * j
            Escribir i, " x ", j, " = ", resultado
        FinPara
        
        Escribir "" 
    FinPara
    
FIN


# Prueba de Escritorio:

Tablas del 2 al 4, multiplicadas hasta el 5

| Acción | i | j | Operación | Resultado | Salida |
|--------|---|---|-----------|-----------|--------|
| Tabla | 2 | - | - | - | TABLA DEL 2 |
|  j=1 | 2 | **1** | 2x1 | 1 | 2 x 1 = 2 |
| j=2 | 2 | **2** |2x2 | 4 | 2 x 2 = 4 |
|  j=3 | 2 | **3** |2x3 | 6 | 2 x 3 = 6 |
|  j=4 | 2 | **4** |2x4 | 8 | 2 x 4 = 8 |
| j=5 | 2 | **5** | 2x5 | 10 | 2 x 5 = 10 |
| Fin tabla 2  | - | - | - | - | - |
| Tabla | 3 | - | - | - | TABLA DEL 3 |
| j=1 | 3 | **1** | 3x1 | 3 | 3 x 1 = 3 |
|  j=2 | 3 | **2** | 3x2 | 6 | 3 x 2 = 6 |
|  j=3 | 3 | **3** | 3x3 | 9 | 3 x 3 = 9 |
|  j=4 | 3 | **4** | 3x4 | 12 | 3 x 4 = 12 |
|  j=5 | 3 | **5** | 3x5 | 15 | 3 x 5 = 15 |
| Fin tabla 3| - |  - |- | - | - |
| Tabla | 4 | - | - | - | TABLA DEL 4 |
|  j=1 | 4 | **1** | 4x1 | 4 | 4 x 1 = 4 |
|  j=2 | 4 | **2** | 4x2 | 8 | 4 x 2 = 8 |
|  j=3 | 4 | **3** | 4x3 | 12 | 4 x 3 = 12 |
|  j=4 | 4 | **4** | 4x4 | 16 | 4 x 4 = 16 |
|  j=5 | 4 | **5** | 4x5 | 20 | 4 x 5 = 20 |
| Fin tabla 4 | - | - | - | - | - |
