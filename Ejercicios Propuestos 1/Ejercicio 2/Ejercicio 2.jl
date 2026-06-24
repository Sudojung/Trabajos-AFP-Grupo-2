suma_pares = 0
suma_impares = 0
suma_multp5 = 0

print("Ingrese un número entero (mayor que 1): ")
n = parse(Int, readline())

while n <= 1
    println("ERROR: El número debe ser estrictamente mayor que 1.")
    print("Por favor, intente de nuevo: ")
    global n = parse(Int, readline())
end

for i in 1:n
    if i % 2 == 0
        global suma_pares += i
    else
        global suma_impares += i
    end
    
    if i % 5 == 0
        global suma_multp5 += i
    end
end

println("La suma de números pares entre 1 y ", n, " es: ", suma_pares)
println("La suma de números impares entre 1 y ", n, " es: ", suma_impares)
println("La suma de números múltiplos de 5 entre 1 y ", n, " es: ", suma_multp5)
