function analizar_presos()
    println("=== Análisis de Presos por Jefatura ===\n")
    
    # Tabla de puntuaciones por tipo de pista
    puntuacion = Dict("A" => 20, "B" => 15, "C" => 30)
    
    print("¿Cuántas jefaturas de policía hay? ")
    num_jefaturas = parse(Int, readline())
    
    # Variables para estadísticas
    total_presos = 0
    culpables = 0
    alto_riesgo = 0
    bajo_riesgo = 0
    
    tipo_pista_count = Dict("A" => 0, "B" => 0, "C" => 0)
    
    println("\n=== INGRESO DE DATOS ===\n")
    
    for jefatura in 1:num_jefaturas
        println("Jefatura $jefatura:")
        
        print("  ¿Cuántos presos hay? ")
        num_presos = parse(Int, readline())
        
        total_presos = total_presos + num_presos
        
        for preso in 1:num_presos
            print("  Preso $preso - Tipo de pista (A/B/C): ")
            tipo_pista = uppercase(readline())
            
            if !(tipo_pista in keys(puntuacion))
                println("  Tipo de pista inválido")
                continue
            end
            
            # Obtener puntuación
            puntos = puntuacion[tipo_pista]
            tipo_pista_count[tipo_pista] = tipo_pista_count[tipo_pista] + 1
            
            # Determinar estatus
            if puntos > 85
                estatus = "Culpable"
                culpables = culpables + 1
            elseif puntos >= 65
                estatus = "Sospechoso de alto riesgo"
                alto_riesgo = alto_riesgo + 1
            else
                estatus = "Sospechoso de bajo riesgo"
                bajo_riesgo = bajo_riesgo + 1
            end
            
            println("    Puntuación: $puntos - Estatus: $estatus")
        end
        
        println()
    end
    
    # Mostrar resultados
    println("\n=== RESULTADOS ===\n")
    
    println("Total de presos: $total_presos")
    println("Culpables: $culpables")
    println("Sospechosos de alto riesgo: $alto_riesgo")
    println("Sospechosos de bajo riesgo: $bajo_riesgo")
    
    # Tipo de pista más frecuente
    tipo_mas_frecuente = ""
    max_count = 0
    
    for tipo in keys(tipo_pista_count)
        if tipo_pista_count[tipo] > max_count
            max_count = tipo_pista_count[tipo]
            tipo_mas_frecuente = tipo
        end
    end
    
    println("\nTipo de pista más frecuente: $tipo_mas_frecuente ($max_count veces)")
    
    # Porcentajes de cada tipo de pista
    println("\nPorcentaje de cada tipo de pista:")
    for tipo in ["A", "B", "C"]
        if total_presos > 0
            porcentaje = (tipo_pista_count[tipo] / total_presos) * 100
            println("  Tipo $tipo: $(round(porcentaje, digits=2))%")
        end
    end
end

analizar_presos()
