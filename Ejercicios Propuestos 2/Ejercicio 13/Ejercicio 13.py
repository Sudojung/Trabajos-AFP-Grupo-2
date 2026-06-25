NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

# Creamos dos variables acumuladoras
sumaPar = 0
sumaImp = 0

inicio = int(input("Ingrese el número de INICIO: "))
final = int(input("Ingrese el número de FIN: "))

print("-" * 50)

for i in range(inicio, final + 1):

    # Verificar si el número es par o impar
    if i % 2 == 0:
        # Si el residuo es 0, es PAR
        sumaPar += i
    else:
        # Si el residuo no es 0, es IMPAR
        sumaImp += i

# Mostrar resultados
print(f"Rango: del {inicio} al {final}")
print(f"-> La suma total de los números PARES es: {sumaPar}")
print(f"-> La suma total de los números IMPARES es: {sumaImp}")
print("-" * 50)
