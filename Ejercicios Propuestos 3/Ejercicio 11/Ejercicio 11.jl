function Intercambiar!(a, b)
    aux = a[1]
    a[1] = b[1]
    b[1] = aux
end

print("Ingrese el primer número: ")
n1_input = parse(Int, readline())
print("Ingrese el segundo número: ")
n2_input = parse(Int, readline())

num1 = [n1_input]
num2 = [n2_input]

println(" ANTES (Valores iniciales): num1 = ", num1[1], " ; num2 = ", num2[1])

Intercambiar!(num1, num2)

println(" AHORA (Valores intercambiados): num1 = ", num1[1], " ; num2 = ", num2[1])