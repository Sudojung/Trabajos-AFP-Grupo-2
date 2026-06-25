NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

contador = 0

# Solicitamos la cantidad de números
n = int(input("Ingrese la cantidad de números en la secuencia: "))

# Recorremos la secuencia
for i in range(1, n + 1):
    numero = input(f"Ingrese el número {i}: ")

    tam = len(numero)
    mitad = tam // 2

    if tam % 2 == 0:
        # Caso par
        primera = numero[:mitad]
        segunda = numero[mitad:]
    else:
        # Caso impar: se ignora el dígito del medio
        primera = numero[:mitad]
        segunda = numero[mitad + 1:]

    if primera == segunda:
        contador += 1
        print(f"{numero} : SI es número gemelo")
    else:
        print(f"{numero} : NO es número gemelo")

print(f"Cantidad total de números gemelos en la secuencia: {contador}")