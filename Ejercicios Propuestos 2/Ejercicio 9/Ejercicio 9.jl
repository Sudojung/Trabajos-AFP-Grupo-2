# Rangos de las tablas:
println("¿Desde qué tabla desea iniciar?")
inicio = parse(Int, readline())

println("¿Hasta qué tabla desea llegar?")
final = parse(Int, readline())

# Límite de la multiplicación
println("¿Hasta qué número desea multiplicar en cada tabla?")
tope = parse(Int, readline())

println("--------------------------------------------------")

# Proceso de generar las tablas 
for i in inicio:final
    println("=========================")
    println("      TABLA DEL ", i)
    println("========================")
    
    # Proceso de las multiplicaciones
    for j in 1:tope
        global resultado
        resultado = i * j
        println(i, " x ", j, " = ", resultado)
    end
    
    println("") 
end