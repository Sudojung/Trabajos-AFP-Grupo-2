println("Ingrese un numero entero positivo n:")
n = parse(Int, readline())

# Validación ya que nos indica que tiene que ser positivo.
if n <= 0
    println("Error: El numero debe ser positivo.")
else
    for i in 1:n
        # Imprimir espacios para darle forma de pirámide 
        for j in 1:(n - i)
            print("  ") # print equivale a Escribir Sin Saltar
        end
        
        # Lado izquierdo de la pirámide (pa arriba)
        for j in 0:(i - 1)
            global val
            val = (i + j) % 10
            print(val, " ")
        end
        
        # Lado derecho de la pirámide (pa abajo)
        for j in (i - 2):-1:0
            global val
            val = (i + j) % 10
            print(val, " ")
        end
        
        println("") # Salto de línea al terminar la fila
    end
end
