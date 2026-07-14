# Ejercicio 25:

La media armónica de n números está definida por:

<img width="281" height="158" alt="image" src="https://github.com/user-attachments/assets/25317f85-61aa-4128-9ad4-157c371c5ef5" />


y la media geométrica por:

<img width="415" height="121" alt="image" src="https://github.com/user-attachments/assets/8b6d293f-b91c-44c6-be69-05e7c5877fd7" />


Hacer un algoritmo para calcular la diferencia de la media armónica y la media geometrica de M números enteros positivos.

# Algoritmo:

Algoritmo DiferenciaMedias

    Definir M, i, x Como Entero
    Definir suma_inversas, producto, armonica, geometrica Como Real
    
    Escribir "Ingrese la cantidad de numeros a evaluar (M):"
    Leer M
    
    Si M <= 0 Entonces
        Escribir "Debe ingresar una cantidad mayor a 0."
    Sino
        suma_inversas <- 0
        producto <- 1
        
        Para i <- 1 Hasta M Hacer
            Escribir "Ingrese el numero ", i, ":"
            Leer x
            
            
            // si en caso nos diga que pasa si pongo cero o negativos se escribe que
            Si x <= 0 Entonces
                Escribir "Error: Solo se admiten numeros enteros POSITIVOS (mayores a 0)."
                i <- M + 1 // Forzar salida del bucle
            Sino
                suma_inversas <- suma_inversas + (1.0 / x)
                producto <- producto * x
            FinSi
        FinPara
        
        // vemos si no hay errores
        Si x > 0 Entonces
            armonica <- M / suma_inversas
            geometrica <- producto ^ (1.0 / M)
            
            Escribir "Media Armonica: ", armonica
            Escribir "Media Geometrica: ", geometrica
            Escribir "Diferencia (Valor Absoluto): ", ABS(armonica - geometrica)
        FinSi
    FinSi
FinAlgoritmo


# Prueba de Escritorio:

- M = 3
- x_1 = 2
- x_2 = 4
- x_3 = 8

### Prueba de escritorio

| i | x | suma_inversas | producto | Observación |
|---:|---:|---:|---:|---|
| - | - | 0 | 1 | Se inicializan las variables. |
| 1 | 2 | 0.5 | 2 | Se agrega 1/2 y se multiplica por 2. |
| 2 | 4 | 0.75 | 8 | Se agrega 1/4 y se multiplica por 4. |
| 3 | 8 | 0.875 | 64 | Se agrega 1/8 y se multiplica por 8. |

 Cálculos

| Cálculo | Operación | Resultado |
|---|---|---:|
| Media armónica | 3 / 0.875 | 3.4286 |
| Media geométrica | 64^(1/3) | 4.0000 |
| Diferencia | [3.4286 - 4.0000] | 0.5714 |

