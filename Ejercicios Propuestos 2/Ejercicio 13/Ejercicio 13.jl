sumaPar = 0
sumaImp = 0

println("Ingrese el número de INICIO:")
inicio = parse(Int, readline())

println("Ingrese el número de FIN:")
final = parse(Int, readline())

println("--------------------------------------------------")

for i in inicio:final
    global sumaPar, sumaImp
    
    # Para saber si un número es par o impar
    if i % 2 == 0
        # Si el residuo es 0, es PAR. Lo guardamos en los pares.
        sumaPar = sumaPar + i 
    else
        # Si el residuo no es 0, es IMPAR. Lo guardamos en los impares.
        sumaImp = sumaImp + i 
    end
end

# Resultados
println("Rango: del ", inicio, " al ", final)
println("-> La suma total de los números PARES es: ", sumaPar)
println("-> La suma total de los números IMPARES es: ", sumaImp)
println("--------------------------------------------------")