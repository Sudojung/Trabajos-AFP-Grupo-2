# Declaración/Lectura de variables desde el teclado
println("Ingrese la base (número real): ")
base = parse(Float64, readline())

println("Ingrese el numerador del exponente: ")
num = parse(Int, readline())

println("Ingrese el denominador del exponente: ")
den = parse(Int, readline())

# Calculamos base^num
potencia = 1.0
for i in 1:num
    global potencia
    potencia = potencia * base
end

# Calculamos la raíz den-esima de potencia
raizz = potencia / den   # Valor inicial aproximado

for i in 1:50   # 50 iteraciones para mejorar precisión
    global raizz
    raizz = ( (den - 1) * raizz + (potencia / (raizz^(den - 1))) ) / den
end

resultado = raizz

println("El resultado de ", base, " elevado a ", num, "/", den, " es: ", resultado)