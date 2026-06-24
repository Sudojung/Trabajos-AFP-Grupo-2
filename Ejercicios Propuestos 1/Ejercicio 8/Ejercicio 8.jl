print("Introduce un número para ver su tabla: ")
num = parse(Int, readline())
println("La tabla de multiplicar del ", num, " es:")
println("--------------------------------------------")

for i in 1:10
    println(num, " x ", i, " = ", num * i)
end
