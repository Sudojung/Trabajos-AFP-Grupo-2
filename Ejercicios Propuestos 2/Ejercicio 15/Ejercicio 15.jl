# Bucle de validación para el primer intervalo
while true
    println("Primer Intervalo [a, b] ")
    println("Ingrese el valor de inicio (a):")
    A = parse(Float64, readline())
    println("Ingrese el valor de fin (b):")
    B = parse(Float64, readline())
    
    if A > B
        println("¡Error! El inicio A no puede ser mayor que el fin B.")
        println("--------------------------------------------------")
    else
        global A, B
        break # Hasta Que A <= B
    end
end

# Bucle de validación para el segundo intervalo
while true
    println("Segundo Intervalo [c, d] ")
    println("Ingrese el valor de inicio (c):")
    C = parse(Float64, readline())
    println("Ingrese el valor de fin (d):")
    D = parse(Float64, readline())
    
    if C > D
        println("¡Error! El inicio C no puede ser mayor que el fin D.")
        println("--------------------------------------------------")
    else
        global C, D
        break # Hasta Que C <= D
    end
end

# Encontrar el inicio de la intersección (el MÁXIMO entre a y c)
if A > C
    maxInicio = A
else
    maxInicio = C
end

# Encontrar el fin de la intersección (el MÍNIMO entre b y d)
if B < D
    minFin = B
else
    minFin = D
end

println("--------------------------------------------------")
# Evaluamos si realmente chocan o están separados
if maxInicio <= minFin
    println("La intersección de los intervalos es: [", maxInicio, " , ", minFin, "]")
else
    println("Los intervalos no se cruzan.")
end
println("--------------------------------------------------")