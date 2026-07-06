NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

# Función para intercambiar dos valores
def intercambiar(a, b):
    # Variable auxiliar
    aux = a
    a = b
    b = aux

    # Retornar los valores intercambiados
    return a, b


# Programa principal ---------------

# Solicitar los dos números
num1 = int(input("Ingrese el primer número: "))
num2 = int(input("Ingrese el segundo número: "))

# Mostrar los valores originales
print(f"\nANTES (Valores iniciales): num1 = {num1} ; num2 = {num2}")

# Aplicar la función
num1, num2 = intercambiar(num1, num2)

# Mostrar los valores intercambiados
print(f"AHORA (Valores intercambiados): num1 = {num1} ; num2 = {num2}")


# ==========================================================
# NOTA:
# En PSeInt este ejercicio utiliza parámetros "Por Referencia",
# lo que permite modificar directamente las variables originales
# enviadas a la función.
#
# En Python, los datos de tipo entero (int) son inmutables y no
# existe el paso por referencia de la misma forma que en PSeInt
# o C++. Por ello, la función devuelve los dos valores ya
# intercambiados mediante "return a, b", y posteriormente se
# reasignan con la instrucción:
#
#     num1, num2 = intercambiar(num1, num2)
#
# Esta es la forma estándar y recomendada de intercambiar valores
# entre funciones en Python, manteniendo el mismo resultado que
# el algoritmo original en PSeInt.
# ==========================================================
