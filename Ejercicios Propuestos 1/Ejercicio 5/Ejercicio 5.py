NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

# Escriba un programa que lea de la entrada estándar valores que representan años e indique si son o no años bisiestos. El programa seguirá leyendo años hasta un máximo de 10 o hasta que haya leído 3 años bisiestos.

# Inicializamos los contadores
contador = 0
bisiestos = 0

# Continuamos mientras no se hayan leído 10 años
# y no se hayan encontrado 3 años bisiestos
while contador < 10 and bisiestos < 3:

    # Solicitamos un año al usuario
    anio = int(input("Introduce un año: "))
    contador += 1

    # Verificamos si el año es bisiesto
    if (anio % 4 == 0 and anio % 100 != 0) or (anio % 400 == 0):

        print("Es bisiesto")

        # Incrementamos el contador de años bisiestos
        bisiestos += 1

    else:
        print("No es bisiesto")