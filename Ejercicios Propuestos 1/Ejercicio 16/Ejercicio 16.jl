print("Introduce un número entero positivo: ")
n = parse(Int, readline())

suma_divisores = 0

for i in 1:(n - 1)
    if n % i == 0
        global suma_divisores += i
    end
end

if suma_divisores == n
    println("El número ", n, " es perfecto.")
else
    println("El número ", n, " no es perfecto.")
end
