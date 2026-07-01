# Ejercicio 18:

Escribir un algoritmo en pseudocódigo que saque por pantalla el nombre y número de días del mes que pida el usuario por teclado en forma de número natural del 1 al 12. Usar sólo el tipo predefinido de los naturales. Si introduce un número fuera del rango 1..12, sacar el mensaje ‘Mes inválido’. Utilizar la sentencia CASO. 


# Algoritmo:

Algoritmo DiasDelMes

    Definir mes Como Entero

    Escribir "Ingrese el número del mes (1 al 12):"
    Leer mes

    Segun mes Hacer

        1:
            Escribir "Enero - 31 días"

        2:
            Escribir "Febrero - 28 días"

        3:
            Escribir "Marzo - 31 días"

        4:
            Escribir "Abril - 30 días"

        5:
            Escribir "Mayo - 31 días"

        6:
            Escribir "Junio - 30 días"

        7:
            Escribir "Julio - 31 días"

        8:
            Escribir "Agosto - 31 días"

        9:
            Escribir "Septiembre - 30 días"

        10:
            Escribir "Octubre - 31 días"

        11:
            Escribir "Noviembre - 30 días"

        12:
            Escribir "Diciembre - 31 días"

        De Otro Modo:
            Escribir "Mes inválido"

    FinSegun

FinAlgoritmo



# Prueba de Escritorio:

Mes = 7 - Julio

| mes | Evaluación | Operación | Salida |
|-----|-----------|-----------|--------|
| 7 | ¿mes = 1? | NO | - |
| 7 | ¿mes = 2? | NO | - |
| 7 | ¿mes = 3? | NO | - |
| 7 | ¿mes = 4? | NO | - |
| 7 | ¿mes = 5? | NO | - |
| 7 | ¿mes = 6? | NO | - |
| 7 | ¿mes = 7? |  SI | **Julio - 31 días** |


