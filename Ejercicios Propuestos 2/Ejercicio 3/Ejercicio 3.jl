# Validación de entrada
while true
    println("Ingrese un número natural (mayor que 0):")
    n = parse(Int, readline())
    
    if n <= 0
        println("Error: debe ingresar un número natural positivo.")
    else
        global n
        break # Hasta Que n > 0
    end
end

suma = 0

for i in 1:1:n # "1:1:n" representa: desde 1 hasta n con paso 1
    global suma
    suma = suma + (i * i)
end

println("La suma de los cuadrados de los ", n, " primeros números naturales es: ", suma)