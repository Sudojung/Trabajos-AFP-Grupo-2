Algoritmo DescifrarNumero

    Definir numero Como Cadena
    Definir i Como Entero
    Definir digitos Como Entero
    Dimension digitos[4]

    Escribir "Ingrese el número cifrado:"
    Leer numero

    // Restaurar el orden original
    digitos[0] <- ConvertirANumero(SubCadena(numero,2,2))
    digitos[1] <- ConvertirANumero(SubCadena(numero,3,3))
    digitos[2] <- ConvertirANumero(SubCadena(numero,0,0))
    digitos[3] <- ConvertirANumero(SubCadena(numero,1,1))

    // Descifrar cada dígito
    Para i <- 0 Hasta 3 Hacer
        digitos[i] <- (digitos[i] + 3) MOD 10
    FinPara

    Escribir "Número original: ", digitos[0], digitos[1], digitos[2], digitos[3]

FinAlgoritmo
