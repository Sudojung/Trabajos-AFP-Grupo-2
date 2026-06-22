NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

# Se definen los números triangulares como los obtenidos por la suma de los números naturales sucesivos 1, 2, 3, .... Es decir, los primeros números triangulares son 1, 3, 6, 10, etc. Elabore un programa para imprimir el n-ésimo número triangular.

# Solicitamos el valor de n
n = int(input("n: "))

# Aplicamos la fórmula del número triangular
triangular = n * (n + 1) // 2

# Mostramos el resultado obtenido
print("Número triangular:", triangular)