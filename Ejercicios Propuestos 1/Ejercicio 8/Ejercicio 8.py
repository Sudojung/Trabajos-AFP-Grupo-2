NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

# Escriba un programa que imprima la tabla de multiplicar de un número que se leerá de la entrada estándar. El funcionamiento del programa se muestra en el siguiente ejemplo de ejecución (en negrita, el número introducido por el usuario): 

# Introduzca un número: 5
# La tabla de multiplicar del 5 es:
# 5 x 1 = 5
# 5 x 2 = 10
# 5 x 3 = 15
# 5 x 4 = 20
# 5 x 5 = 25
# 5 x 6 = 30
# 5 x 7 = 35
# 5 x 8 = 40
# 5 x 9 = 45
# 5 x 10 = 50
# Note la alineación de los resultados

# Solicitamos un número al usuario
num = int(input("Introduce un número para ver su tabla: "))

# Mostramos el encabezado de la tabla
print(f"La tabla de multiplicar del {num} es:")
print("--------------------------------------------")

# Recorremos los números del 1 al 10
for i in range(1, 11):

    # Mostramos cada multiplicación y su resultado
    print(f"{num} x {i} = {num * i}")
