# Leemos los dos números
println("Ingrese el primer número:")
primero = parse(Int, readline())

println("Ingrese el segundo número:")
segundo = parse(Int, readline())

# Calculamos el MCD mediante restas sucesivas
while primero != segundo
    global primero, segundo
    
    if primero > segundo
        primero = primero - segundo
    else
        segundo = segundo - primero
    end
end

# Mostramos el resultado
println("El máximo común divisor es: ", primero)
