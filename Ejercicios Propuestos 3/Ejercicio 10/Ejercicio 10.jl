cantidad = 0
i = 0

println("Ingrese la cantidad de elementos del vector:")
cantidad = parse(Int, readline())

# Crear vector dinámico
puntero = Vector{Int}(undef, cantidad)

println("Ingrese los elementos:")
for i = 1:cantidad
    println("Elemento ", i - 1, ":")
    puntero[i] = parse(Int, readline())
end

println("Elementos del vector dinámico:")
for i = 1:cantidad
    print(puntero[i], " ")
end
println()

# Liberar el vector
puntero = nothing
