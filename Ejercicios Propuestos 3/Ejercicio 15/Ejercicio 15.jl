# MatrizSimetrica

n = 0
es_simetrica = true

print("Ingrese el tamaño (n) de la matriz cuadrada: ")
n = parse(Int, readline())

matriz = zeros(Int, n, n)

for f in 0:(n - 1)
    for c in 0:(n - 1)
        print("Valor para la posición [", f, "][", c, "]: ")
        matriz[f + 1, c + 1] = parse(Int, readline())
    end
end


es_simetrica = true

for f in 0:(n - 1)
    for c in 0:(n - 1)
        if matriz[f + 1, c + 1] != matriz[c + 1, f + 1]
            global es_simetrica = false
        end
    end
end

println("\nMATRIZ:")
for f in 0:(n - 1)
    for c in 0:(n - 1)
        print(matriz[f + 1, c + 1], "  ")
    end
    println("")
end

println("--------------------------------------------------")
if es_simetrica
    println("La matriz es SIMÉTRICA.")
else
    println("La matriz NO es simétrica.")
end