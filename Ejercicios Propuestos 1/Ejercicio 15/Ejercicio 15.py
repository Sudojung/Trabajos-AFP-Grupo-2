NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

# Escribir un algoritmo que calcule y escriba los N números primeros términos de la sucesión de Fibonacci (siendo N un numero natural leído). la sucesión de números enteros de fibonacci se define de la forma siguiente:
# f1 = f2 = 1
# fn = fn - 2 + fn - 1, con n > 2
# Los primeros términos de esta sucesión son:
# 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, ...

# Solicitamos la cantidad de términos a mostrar
n = int(input("Ingrese la cantidad de términos que desea ver: "))

# Inicializamos los dos primeros términos de la sucesión
a = 0
b = 1

# Mostramos un mensaje informativo
print(f"Los primeros {n} términos son:")

# Generamos los N términos de Fibonacci
for i in range(1, n + 1):

    # Mostramos el término actual
    print(a, end=" ")

    # Calculamos el siguiente término
    siguiente = a + b

    # Actualizamos los valores para continuar la secuencia
    a = b
    b = siguiente

# Salto de línea final
print("")