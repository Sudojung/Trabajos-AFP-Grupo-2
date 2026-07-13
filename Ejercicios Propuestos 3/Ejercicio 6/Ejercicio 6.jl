print("Ingrese la cantidad de caracteres: ")
n = parse(Int, readline())

cadena = Vector{Char}(undef, n)

for i in 0:(n - 1)
    print("Carácter para la posición ", i, ": ")
    
    entrada = readline()
    cadena[i + 1] = isempty(entrada) ? ' ' : entrada[1]
end

# Bubble Sort
for i in 0:(n - 2)
    for j in 0:(n - i - 2)
        #  sumamos 1 a los índices j y j+1 para adaptarlos a Julia
        if cadena[j + 1] > cadena[(j + 1) + 1]
            aux = cadena[j + 1]
            cadena[j + 1] = cadena[(j + 1) + 1]
            cadena[(j + 1) + 1] = aux
        end
    end
end

println("Cadena ordenada:")
for i in 0:(n - 1)
    # print() escribe "Sin Saltar"
    print(cadena[i + 1])
end
println("") # Salto de línea final
