function calcular_seno(x, n)
    suma = x
    termino = x
    signo = -1.0
    
    # Calculamos los términos siguientes.
    for i in 1:(n - 1)
        termino = termino * (x * x) / ((2 * i) * (2 * i + 1))
        suma = suma + (signo * termino)
        signo = -signo  # (+, -, +, -)
    end
    
    retorno = suma
    return retorno
end

n = 10 # es lo que solicitan
angulo = 0.0
limite = 2 * pi
paso_angulo = pi / 8

println("Angulo (rad) | Tangente")
println("------------------------")

# se le suma 0.0001 al limite para por así decirlo no haya errores
while angulo <= limite + 0.0001
    global angulo
    sen_x = calcular_seno(angulo, n)
    
    # Calculamos el coseno         
    cos_x = sqrt(abs(1 - (sen_x * sen_x)))
    
    # CASO 1: Ajuste del signo del coseno.
    if angulo > (pi / 2) && angulo < (3 * pi / 2)
        cos_x = -cos_x 
    end
    
    # Caso 2: División por cero.
    if abs(cos_x) < 0.00001
        println(angulo, " | infinito")
    else
        tan_x = sen_x / cos_x
        println(angulo, " | ", tan_x)
    end
    
    angulo = angulo + paso_angulo
end
