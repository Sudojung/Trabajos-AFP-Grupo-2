suma = 0

print("Ingrese la cantidad de elementos que tendrá el vector: ")
cantidad = parse(Int, readline())

vectorNumeros = Vector{Int}(undef, cantidad)

println("Ingrese los números enteros uno por uno:")

for i in 0:(cantidad - 1)
    print("Valor para la posición ", i, ": ")
    
    # Guardamos en i + 1 (para usar 1, 2, 3...)
    vectorNumeros[i + 1] = parse(Int, readline())
    
    global suma = suma + vectorNumeros[i + 1]
end

println("La suma total de los elementos del vector es: ", suma)