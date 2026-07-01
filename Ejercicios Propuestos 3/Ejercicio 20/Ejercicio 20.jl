function OrdenarParesImpares!(arr, n)
    
    for i in 0:(n - 2)
        for j in 0:(n - i - 2)
            debeIntercambiar = false
            
            val_izq = arr[j + 1]
            val_der = arr[(j + 1) + 1]
            
            # 1. Si el izquierdo es impar y el derecho es par -> Intercambiar
            if (val_izq % 2 != 0) && (val_der % 2 == 0)
                debeIntercambiar = true
            end
            
            # 2. Si ambos son pares -> Ordenar ascendente
            if (val_izq % 2 == 0) && (val_der % 2 == 0)
                if val_izq > val_der
                    debeIntercambiar = true
                end
            end
            
            # 3. Si ambos son impares -> Ordenar descendente
            if (val_izq % 2 != 0) && (val_der % 2 != 0)
                if val_izq < val_der
                    debeIntercambiar = true
                end
            end
            
            # Si alguna regla se cumple, realizamos el intercambio
            if debeIntercambiar
                aux = arr[j + 1]
                arr[j + 1] = arr[(j + 1) + 1]
                arr[(j + 1) + 1] = aux
            end
        end
    end
end



print("Ingrese la cantidad de elementos que tendra el vector: ")
n = parse(Int, readline())


vector = Vector{Int}(undef, n)

println("--- Ingrese los números del vector ---")
for i in 0:(n - 1)
    print("Valor para la posición ", i, ": ")
    vector[i + 1] = parse(Int, readline())
end

println("")
println("Vector original:")
for i in 0:(n - 1)
    print(vector[i + 1], " ")
end
println("")
println("----------------------")

# Se aplica la función de ordenamiento
OrdenarParesImpares!(vector, n)

println("Vector final ordenado:")
for i in 0:(n - 1)
    print(vector[i + 1], " ")
end
println("")