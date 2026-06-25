NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

# Función para sacar el Máximo Común Divisor
def sacar_mcd(a, b):
    while b != 0:
        temp = b
        b = a % b
        a = temp
    return a


# Los datos
num1 = int(input("Fracción 1 - Numerador: "))
den1 = int(input("Fracción 1 - Denominador: "))

num2 = int(input("Fracción 2 - Numerador: "))
den2 = int(input("Fracción 2 - Denominador: "))

if den1 == 0 or den2 == 0:
    print("Error: El denominador no puede ser cero.")
else:
    # Simplificamos ambas fracciones antes de operar
    mcd = sacar_mcd(num1, den1)
    num1 //= mcd
    den1 //= mcd

    mcd = sacar_mcd(num2, den2)
    num2 //= mcd
    den2 //= mcd

    print(f"Fracciones listas para operar: {num1}/{den1} y {num2}/{den2}")

    # Hacemos la SUMA
    num_suma = (num1 * den2) + (num2 * den1)
    den_suma = den1 * den2

    # Simplificamos la suma
    mcd = sacar_mcd(num_suma, den_suma)
    num_suma //= mcd
    den_suma //= mcd

    # Hacemos el PRODUCTO
    num_prod = num1 * num2
    den_prod = den1 * den2

    # Simplificamos el producto
    mcd = sacar_mcd(num_prod, den_prod)
    num_prod //= mcd
    den_prod //= mcd

    # Resultados
    print(f"Resultado de la SUMA: {num_suma}/{den_suma}")
    print(f"Resultado del PRODUCTO: {num_prod}/{den_prod}")