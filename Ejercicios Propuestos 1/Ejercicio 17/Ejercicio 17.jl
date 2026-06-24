FactorExtra = 1.5

print("Ingrese la cantidad total de empleados que tiene la empresa: ")
NumEmpleados = parse(Int, readline())

print("Ingrese el pago por hora ordinaria: ")
ptas_hora = parse(Float64, readline())

for contador in 1:NumEmpleados
    println("Empleado número ", contador)
    print("Ingrese las horas trabajadas: ")
    horas_trabajadas = parse(Float64, readline())
    
    if horas_trabajadas <= 40
        salario = horas_trabajadas * ptas_hora
    else
        horas_extras = horas_trabajadas - 40
        salario = (40 * ptas_hora) + (horas_extras * ptas_hora * FactorExtra)
    end
    
    println("El salario del empleado ", contador, " es: ", salario)
    println("------------------------------------------------")
end
