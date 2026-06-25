println("Ingrese el DÍA de la primera fecha (Escriba 0 para salir):")
dia1 = parse(Int, readline())

# El ciclo se repite MIENTRAS el día 1 no sea cero
while dia1 != 0
    global dia1  # Indicamos que modificaremos dia1 dentro del bucle al final
    
    # Como el día no es 0, terminamos de pedir la primera fecha
    println("Ingrese el MES de la primera fecha:")
    mes1 = parse(Int, readline())
    println("Ingrese el AÑO de la primera fecha:")
    año1 = parse(Int, readline())
    
    # Pedimos la segunda fecha completa
    println("--- Segunda Fecha ---")
    println("Ingrese el DÍA de la segunda fecha:")
    dia2 = parse(Int, readline())
    println("Ingrese el MES de la segunda fecha:")
    mes2 = parse(Int, readline())
    println("Ingrese el AÑO de la segunda fecha:")
    año2 = parse(Int, readline())
    
    println("--------------------------------------------------")
    
    # Comparación de mayor a menor
    if año1 < año2
        println("-> La primera fecha (", dia1, "/", mes1, "/", año1, ") es anterior.")
    else
        if año1 > año2
            println("-> La segunda fecha (", dia2, "/", mes2, "/", año2, ") es anterior.")
        else
            # Si los años son iguales. Comparamos los meses:
            if mes1 < mes2
                println("-> La primera fecha es anterior.")
            else
                if mes1 > mes2
                    println("-> La segunda fecha es anterior.")
                else
                    # Si los años y meses son iguales. Comparamos los días:
                    if dia1 < dia2
                        println("-> La primera fecha es anterior.")
                    else
                        if dia1 > dia2
                            println("-> La segunda fecha es anterior.")
                        else
                            println("-> Ambas fechas son exactamente iguales.")
                        end
                    end
                end
            end
        end
    end
    
    println("--------------------------------------------------")
    # Volvemos a pedir el primer día para ver si el ciclo continúa o se detiene
    println("Ingrese el DÍA de la siguiente primera fecha (Escriba 0 para salir):")
    dia1 = parse(Int, readline())
end

println("Programa finalizado exitosamente.")