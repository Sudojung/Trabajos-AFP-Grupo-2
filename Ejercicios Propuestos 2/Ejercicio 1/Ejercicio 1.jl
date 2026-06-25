# Bucle de validación hasta que se ingrese un número válido
while true
    println("Ingrese un número entero positivo (mayor o igual a 1):")
    limite = parse(Int, readline())
    
    # Si el número es incorrecto, se muestra error
    if limite < 1
        println("¡Error! El número ingresado no es válido.")
        println("Por favor, intente de nuevo con un número positivo.")
        println("--------------------------------------------------")
    else
        global limite
        break # Hasta Que limite >= 1
    end
end

factorial = 1
println("--------------------------------------------------")
println("Los factoriales hasta el ", limite, " son:")

# Para calcular e imprimir 
for i in 1:limite
    global factorial
    factorial = factorial * i
    println("El factorial de ", i, " es: ", factorial)
end