totalAceptanA = 0
totalAceptanB = 0
aceptanAmbos = 0
aceptanSoloA = 0
aceptanSoloB = 0
noAceptanNinguno = 0

print("Ingrese la cantidad total de personas a encuestar: ")
totalPersonas = parse(Int, readline())

for i in 1:totalPersonas
    println("--- Encuesta N° ", i, " ---")
    print("¿Acepta el producto A? (1=Sí, 0=No): ")
    respuestaA = parse(Int, readline())
    print("¿Acepta el producto B? (1=Sí, 0=No): ")
    respuestaB = parse(Int, readline())
    
    if respuestaA == 1
        global totalAceptanA += 1
    end
    if respuestaB == 1
        global totalAceptanB += 1
    end
    
    if respuestaA == 1 && respuestaB == 1
        global aceptanAmbos += 1
    end
    if respuestaA == 1 && respuestaB == 0
        global aceptanSoloA += 1
    end
    if respuestaA == 0 && respuestaB == 1
        global aceptanSoloB += 1
    end
    if respuestaA == 0 && respuestaB == 0
        global noAceptanNinguno += 1
    end
end

if totalPersonas > 0
    println("=========================================")
    println("Total de personas encuestadas: ", totalPersonas)
    println("% Aceptan A: ", (totalAceptanA / totalPersonas) * 100, "%")
    println("% Aceptan B: ", (totalAceptanB / totalPersonas) * 100, "%")
    println("% Aceptan Ambos: ", (aceptanAmbos / totalPersonas) * 100, "%")
    println("% Aceptan Solo A: ", (aceptanSoloA / totalPersonas) * 100, "%")
    println("% Aceptan Solo B: ", (aceptanSoloB / totalPersonas) * 100, "%")
    println("% No aceptan ninguno: ", (noAceptanNinguno / totalPersonas) * 100, "%")
    println("=========================================")
else
    println("No se registraron encuestas.")
end
