# Ejercicio 19:
Trazar la ejecución del siguiente algoritmo, y hallar el resultado producido cuando los datos de 
entrada son: 49 y 70. 
<img width="472" height="281" alt="Captura de pantalla 2026-07-05 185018" src="https://github.com/user-attachments/assets/669668e6-26ef-480a-8ace-133314589bd7" />

# Algoritmo:
InicioAlgoritmo

Algoritmo Divisor

    Definir primero, segundo Como Entero

    // Leemos los dos números
    Escribir "Ingrese el primer número:"
    Leer primero

    Escribir "Ingrese el segundo número:"
    Leer segundo

    // Calculamos el MCD mediante restas sucesivas
    Mientras primero <> segundo Hacer

        Si primero > segundo Entonces

            primero <- primero - segundo

        SiNo

            segundo <- segundo - primero

        FinSi

    FinMientras

    // Mostramos el resultado
    Escribir "El máximo común divisor es: ", primero

FinAlgoritmo
