println("Ingrese un numero entero:")
num = parse(Int, readline())

invertido = 0
# si se da el caso de que el número es negativo, extraemos el signo
# para trabajar con su valor absoluto y no tener errores en el módulo.
es_negativo = num < 0
if es_negativo
    global num
    num = num * (-1)
end

while num > 0
    global num, invertido
    
    resto = num % 10
    invertido = (invertido * 10) + resto
    num = div(num, 10)
end

# Restauramos el signo negativo si correspondía
if es_negativo
    invertido = invertido * (-1)
end

println("El numero invertido es: ", invertido)
