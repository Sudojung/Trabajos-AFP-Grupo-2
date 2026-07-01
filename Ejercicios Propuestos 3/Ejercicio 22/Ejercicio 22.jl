function InvertirNumero(num)
    
    
    invertido = 0
    esNegativo = false
    
    # Verificamos si el número es negativo
    if num < 0
        esNegativo = true
        num = num * (-1) 
    end
    
    # Proceso inversión
    while num > 0
        digito = num % 10
        invertido = (invertido * 10) + digito
        num = trunc(Int, num / 10)
    end
    
    # Si originalmente era negativo, le devolvemos el signo al resultado
    if esNegativo
        invertido = invertido * (-1) 
    end
    
    return invertido
end


print("Ingrese un número entero (puede ser negativo): ")
numeroOriginal = parse(Int, readline())

# función que devuelve el valor calculado
resultado = InvertirNumero(numeroOriginal)

println("----------------------")
println("Número original: ", numeroOriginal)
println("Número invertido: ", resultado)