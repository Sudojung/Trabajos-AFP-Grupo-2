INICIO
    Definir año, total_leidos, bisiestos_encontrados Como Entero
    
    total_leidos <- 0
    bisiestos_encontrados <- 0
    
    Mientras (total_leidos < 10) Y (bisiestos_encontrados < 3) Hacer
        Escribir "Ingrese un año: "
        Leer año
        
        total_leidos <- total_leidos + 1
        
        Si ((año MOD 4 = 0) Y (año MOD 100 <> 0)) O (año MOD 400 = 0) Entonces
            Escribir año, " es un año BISIESTO."
            bisiestos_encontrados <- bisiestos_encontrados + 1
        Sino
            Escribir año, " NO es un año bisiesto."
        Fin Si
		Escribir "--- continuemos ----"
    Fin Mientras
    
    Escribir "--- Proceso terminado ---"
    Escribir "Total de años revisados: ", total_leidos
    Escribir "Total de bisiestos encontrados: ", bisiestos_encontrados
FIN
