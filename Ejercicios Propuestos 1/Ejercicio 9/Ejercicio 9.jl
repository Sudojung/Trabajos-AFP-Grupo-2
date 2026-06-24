print("Ingrese el límite inferior (n): ")
n = parse(Int, readline())
print("Ingrese el límite superior (m): ")
m = parse(Int, readline())

if n > m
    temp_intercambio = n
    global n = m
    global m = temp_intercambio
    println("Nota: Se acomodaron los límites automáticamente de menor a mayor.")
end

a = 0
b = 1

println("Los números de Fibonacci entre ", n, " y ", m, " son:")

while a <= m
    if a >= n
        print(a, " ")
    end
    siguiente = a + b
    global a = b
    global b = siguiente
end
println()
