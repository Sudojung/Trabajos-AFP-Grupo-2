print("Ingrese la cantidad de términos que desea ver: ")
n = parse(Int, readline())

a = 0
b = 1

println("Los primeros ", n, " términos son:")
for i in 1:n
    print(a, " ")
    siguiente = a + b
    global a = b
    global b = siguiente
end
println()
