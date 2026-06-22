Algoritmo pares_impares_multiplos5
	Definir n, i Como Entero
	Definir suma_pares, suma_impares, suma_multp5 Como Entero
	
	suma_pares <- 0
	suma_impares <- 0
	suma_multp5 <- 0
	
	Escribir "Ingrese un número entero (mayor que 1):"
	Leer n
	
	Mientras n <= 1 Hacer
		Escribir "ERROR: El número debe ser estrictamente mayor que 1."
		Escribir "Por favor, intente de nuevo:"
		Leer n
	FinMientras
	
	Para i <- 1 Hasta n Hacer
		Si i MOD 2 = 0 Entonces
			suma_pares <- suma_pares + i
		SiNo
			suma_impares <- suma_impares + i 
		FinSi
		
		Si i MOD 5 = 0 Entonces
			suma_multp5 <- suma_multp5 + i
		FinSi
	FinPara
	
	Escribir "La suma de números pares entre 1 y ", n, " es: ", suma_pares
	Escribir "La suma de números impares entre 1 y ", n,  " es: ", suma_impares
	Escribir "La suma de números múltiplos de 5 entre 1 y ", n, " es: ", suma_multp5

FinAlgoritmo
