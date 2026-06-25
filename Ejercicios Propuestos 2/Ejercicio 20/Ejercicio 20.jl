# Validación de entrada 
while true
    println("Ingrese un número decimal positivo:")
    numero = parse(Int, readline())
    
    if numero < 0
        println("Error: Debe ingresar un número positivo.")
    else
        global numero
        break # Hasta Que numero >= 0
    end
end

binario = ""

# Caso especial para el cero
if numero == 0
    binario = "0"
else
    # Convertimos el número a binario
    while numero > 0
        global numero, binario
        
        residuo = numero % 2
        binario = string(residuo) * binario
        numero = div(numero, 2)
    end
end

# Imprimimos el resultado 
println("El número en binario es: ", binario)
