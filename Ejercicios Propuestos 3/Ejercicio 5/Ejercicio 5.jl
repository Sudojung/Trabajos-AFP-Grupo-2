function CalcularFactorial(n)

    resultado = 1.0 # El factorial de 0 es 1
    
    if n > 0
        for i in 1:n
            resultado = resultado * i
        end
    end
    
    return resultado
end

print("Ingrese un número entero positivo: ")
numero = parse(Int, readline())

if numero >= 0
    facto = CalcularFactorial(numero)
    println("El factorial de ", numero, " es: ", facto)
else
    println("El factorial no existe para números negativos.")
end