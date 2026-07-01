function OrdenarVector!(arr, n)
    
    for i in 0:(n - 2)
        for j in 0:(n - i - 2)
            if arr[j + 1] > arr[(j + 1) + 1]
                aux = arr[j + 1]
                arr[j + 1] = arr[(j + 1) + 1]
                arr[(j + 1) + 1] = aux
            end
        end
    end
end


function ImprimirVector(arr, n)
    # Definir i Como Entero
    for i in 0:(n - 1)
        # print() escribe "Sin Saltar"
        print(arr[i + 1], " ")
    end
    println("")
end

print("Ingrese la cantidad de elementos: ")
n = parse(Int, readline())


vector = Vector{Int}(undef, n)

for i in 0:(n - 1)
    print("Valor para la posición ", i, ": ")
    vector[i + 1] = parse(Int, readline())
end

println("Vector original:")
ImprimirVector(vector, n)

# Se aplica la función que ordena (usando la convención de '!')
OrdenarVector!(vector, n)

println("Vector ordenado:")
# Se aplica la función que imprime
ImprimirVector(vector, n)