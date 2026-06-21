NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

Ejercicio 1 = Realizar un algoritmo que muestre por pantalla la tabla de multiplicar del tres y del 9

num1 = int(input("Ingresa el primer número para su tabla: "))
num2 = int(input("Ingresa el segundo número para su tabla: "))

print(f"TABLA DEL {num1} (Del 1 al 10)")
for i in range(1, 11):
    resultado1 = num1 * i
    print(f"{num1} x {i} = {resultado1}")

print("")
print(f"TABLA DEL {num2} (Del 1 al 10)")
for i in range(1, 11):
    resultado2 = num2 * i
    print(f"{num2} x {i} = {resultado2}")

