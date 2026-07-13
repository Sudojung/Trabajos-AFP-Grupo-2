NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

def calcular_factorial(numero):
    res = 1
    if numero > 0:
        for i in range(1, numero + 1):
            res *= i
    return res


# Programa principal
N = int(input("Ingrese N (número total de ensayos): "))

# Validación del porcentaje
while True:
    porcentaje_p = float(input("Ingrese la probabilidad de éxito, ejemplo: 50 (50%): "))

    if 0 < porcentaje_p <= 100:
        break
    else:
        print("¡ERROR! El porcentaje debe ser mayor a 0 y máximo 100. Intente de nuevo.")

# Conversión de porcentaje a decimal
p = porcentaje_p / 100
q = 1 - p

print("____________________________________")
print("K\t|\tProbabilidad P(K)")
print("------------------------------------")

# Cálculo de la distribución binomial
for K in range(N + 1):

    factN = calcular_factorial(N)
    factK = calcular_factorial(K)
    factNK = calcular_factorial(N - K)

    combinatoria = factN / (factK * factNK)

    prob = combinatoria * (p ** K) * (q ** (N - K))

    print(f"{K}\t|\t{prob:.6f}")
