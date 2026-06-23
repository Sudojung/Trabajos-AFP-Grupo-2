Algoritmo CajeroAutomatico

    Definir cantidad_euros, resto_euros Como Entero
    Definir billetes_20, billetes_10, billetes_5, billetes_1 Como Entero

    Escribir "Ingrese la cantidad entera de euros a retirar:"
    Leer cantidad_euros

    Si cantidad_euros > 0 Entonces

        billetes_20 <- Trunc(cantidad_euros / 20)
        resto_euros <- cantidad_euros Mod 20

        billetes_10 <- Trunc(resto_euros / 10)
        resto_euros <- resto_euros Mod 10

        billetes_5 <- Trunc(resto_euros / 5)
        resto_euros <- resto_euros Mod 5

        billetes_1 <- resto_euros

        Escribir "--- DESGLOSE ÓPTIMO DE BILLETES ---"
        Escribir "Billetes de 20 euros: ", billetes_20
        Escribir "Billetes de 10 euros: ", billetes_10
        Escribir "Billetes de 5 euros: ", billetes_5
        Escribir "Billetes de 1 euro: ", billetes_1

    Sino

        Escribir "Error: La cantidad ingresada debe ser mayor a cero."

    FinSi

FinAlgoritmo
