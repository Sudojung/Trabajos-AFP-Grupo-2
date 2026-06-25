println("Ingrese el número del mes (1 al 12):")
mes = parse(Int, readline())

if mes == 1
    println("Enero - 31 días")
elseif mes == 2
    println("Febrero - 28 días")
elseif mes == 3
    println("Marzo - 31 días")
elseif mes == 4
    println("Abril - 30 días")
elseif mes == 5
    println("Mayo - 31 días")
elseif mes == 6
    println("Junio - 30 días")
elseif mes == 7
    println("Julio - 31 días")
elseif mes == 8
    println("Agosto - 31 días")
elseif mes == 9
    println("Septiembre - 30 días")
elseif mes == 10
    println("Octubre - 31 días")
elseif mes == 11
    println("Noviembre - 30 días")
elseif mes == 12
    println("Diciembre - 31 días")
else
    println("Mes inválido")
end
