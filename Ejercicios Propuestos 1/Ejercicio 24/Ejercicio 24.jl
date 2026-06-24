# Función auxiliar para leer y validar que la entrada sea un número entero
function leer_entero(mensaje::String)::Int
    while true
        print(mensaje)
        entrada = readline()
        # Intentamos convertir la entrada a entero
        numero = tryparse(Int, entrada)
        if numero !== nothing
            return numero
        else
            println("Error: Por favor, ingrese un número entero válido.")
        end
    end
end

function main()
    println("Ingrese la cantidad total de postulantes a evaluar: ")
    num_postulantes = leer_entero("")
    
    while num_postulantes <= 0
        println("Error: La cantidad debe ser mayor a 0. Intente de nuevo: ")
        num_postulantes = leer_entero("")
    end
    # --------------------------------------------
    
    suma_notas = 0.0
    suma_notas_cuadrado = 0.0
    cant_ingresantes = 0
    tiene_ingresantes = false
    nota_min_ing = 999.0  
    nota_max_ing = -999.0 
    
    for i in 1:num_postulantes
        println("==================================================")
        println("PROCESANDO POSTULANTE Nº ", i)
        println("==================================================")
        
        println("Parte 1: Razonamiento Mat. y Verbal (Máx 40)")
        corr_rmv = leer_entero("  - Cantidad de respuestas CORRECTAS: ")
        inc_rmv = leer_entero("  - Cantidad de respuestas INCORRECTAS: ")
        
        println("Parte 2: Conocimiento en Ciencias (Máx 30)")
        corr_cie = leer_entero("  - Cantidad de respuestas CORRECTAS: ")
        inc_cie = leer_entero("  - Cantidad de respuestas INCORRECTAS: ")
        
        println("Parte 3: Conocimiento en Letras (Máx 30)")
        corr_let = leer_entero("  - Cantidad de respuestas CORRECTAS: ")
        inc_let = leer_entero("  - Cantidad de respuestas INCORRECTAS: ")
        
        # Cálculo de la nota final
        nota_final = (corr_rmv * 2) - (inc_rmv * 1) + (corr_cie * 3) - (inc_cie * 1.5) + (corr_let * 1) - (inc_let * 0.5)
        
        println("--------------------------------------------------")
        println("-> NOTA FINAL: ", nota_final)
        
        # Evaluación del ingreso (Mínimo 120 puntos y límite de 150 vacantes)
        if nota_final >= 120 && cant_ingresantes < 150
            println("-> ESTATUS: ¡INGRESÓ EL POSTULANTE!")
            cant_ingresantes += 1
            
            if !tiene_ingresantes
                nota_min_ing = nota_final
                nota_max_ing = nota_final
                tiene_ingresantes = true
            else
                if nota_final < nota_min_ing
                    nota_min_ing = nota_final
                end
                if nota_final > nota_max_ing
                    nota_max_ing = nota_final
                end
            end
        else
            if nota_final >= 120 && cant_ingresantes >= 150
                println("-> ESTATUS: NO INGRESÓ (Alcanzó puntaje pero no hay vacantes disponibles)")
            else 
                println("-> ESTATUS: NO INGRESÓ (Puntaje menor al mínimo de 120)")
            end
        end
        
        suma_notas += nota_final
        suma_notas_cuadrado += (nota_final * nota_final)
        println()
    end
    
    println("==================================================")
    println("            REPORTE GENERAL DE ADMISIÓN           ")
    println("==================================================")
    
    media = suma_notas / num_postulantes
    println("b) Media aritmética de todos los postulantes: ", media)
    
    varianza = (suma_notas_cuadrado / num_postulantes) - (media * media)
    println("c) Varianza de las notas de los postulantes: ", varianza)
    
    if tiene_ingresantes
        println("d) Reporte de Ingresantes:")
        println("   - Total de vacantes ocupadas: ", cant_ingresantes)
        println("   - Nota MÍNIMA entre ingresantes: ", nota_min_ing)
        println("   - Nota MÁXIMA entre ingresantes: ", nota_max_ing)
    else
        println("d) Reporte de Ingresantes: Ningún postulante logró ingresar.")
    end
    println("==================================================")
end

# Ejecutar el algoritmo principal
main()
