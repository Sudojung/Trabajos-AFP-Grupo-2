suma = 0
cantidad = 0
menor = 0
mayor = 0

print("Ingrese números enteros positivos (Escriba 0 para terminar): ")
num = parse(Int, readline())

while num != 0
    if num < 0
        println("Error: Solo se permiten números positivos.")
    else
        global suma += num
        global cantidad += 1
        
        if cantidad == 1
            global menor = num
            global mayor = num
        else
            if num < menor
                global menor = num
            end
            if num > mayor
                global mayor = num
            end
        end
    end
    print("Ingrese número: ")
    global num = parse(Int, readline())
end

if cantidad > 0
    promedio = suma / cantidad
    println("El número MENOR es: ", menor)
    println("El número MAYOR es: ", mayor)
    println("El PROMEDIO es: ", promedio)
else
    println("No se ingresaron números válidos.")
end
