# Bucle de validación 
while true
    println("Ingrese un número natural:")
    N = parse(Int, readline())
    
    # Si N < 1 Entonces se activa el error
    if N < 1
        println("¡Error! Debe ingresar un número natural (mayor o igual a 1).")
        println("Por favor, intente de nuevo.")
        println("--------------------------------------------------")
    else
        global N
        break # Hasta Que N >= 1
    end
end

digitos = 0
temp = N # Guardamos N en una variable temporal para no borrar el original

# Bucle Mientras
while temp > 0
    global temp, digitos
    # Dividimos entre 10; la función div corta directamente los decimales
    temp = div(temp, 10) 
    
    # Sumamos 1 al contador por cada corte que hacemos
    digitos = digitos + 1   
end

println("El número ", N, " tiene ", digitos, " dígito(s).")