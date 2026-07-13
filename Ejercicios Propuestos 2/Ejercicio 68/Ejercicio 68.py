NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

# Solicitar el número de términos
n = int(input("Introduce el número de términos (n) para aproximar e: "))

# Variables
e = 1.0      # Primer término: 1/0! = 1
fact = 1.0   # Factorial acumulado

# Cálculo de la suma
for i in range(1, n):
    fact *= i
    e += 1 / fact

# Resultado
print(f"El valor aproximado de e con {n} términos es: {e}")
