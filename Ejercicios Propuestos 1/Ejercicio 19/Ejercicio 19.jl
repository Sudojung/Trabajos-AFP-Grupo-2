print("Ingrese la cantidad entera de euros a retirar: ")
cantidad_euros = parse(Int, readline())

if cantidad_euros > 0
    billetes_20 = div(cantidad_euros, 20)
    resto_euros = cantidad_euros % 20
    
    billetes_10 = div(resto_euros, 10)
    resto_euros = resto_euros % 10
    
    billetes_5 = div(resto_euros, 5)
    resto_euros = resto_euros % 5
    
    billetes_1 = resto_euros
    
    println("--- DESGLOSE ÓPTIMO DE BILLETES ---")
    println("Billetes de 20 euros: ", billetes_20)
    println("Billetes de 10 euros: ", billetes_10)
    println("Billetes de 5 euros:  ", billetes_5)
    println("Billetes de 1 euro:   ", billetes_1)
else
    println("Error: La cantidad ingresada debe ser mayor a cero.")
end
