import java.util.Scanner;

public class EJERCICIO13DeGRUPO2 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        // Definir inicio, fin, i Como Entero
        // Definir sumaPar, sumaImp Como Entero
        int inicio, fin, i;
        int sumaPar = 0;
        int sumaImp = 0;

        System.out.println("Ingrese el número de INICIO:");
        inicio = sc.nextInt();

        System.out.println("Ingrese el número de FIN:");
        fin = sc.nextInt();

        System.out.println("--------------------------------------------------");

        // Para i <- inicio Hasta final Hacer
        for (i = inicio; i <= fin; i++) {
            
            // Para saber si un número es par o impar (i MOD 2 = 0)
            if (i % 2 == 0) {
                // Si el residuo es 0, es PAR. Lo guardamos en los pares.
                sumaPar = sumaPar + i;
            } else {
                // Si el residuo no es 0, es IMPAR. Lo guardamos en los impares.
                sumaImp = sumaImp + i;
            }
        }

        // Resultados
        System.out.println("Rango: del " + inicio + " al " + fin);
        System.out.println("-> La suma total de los números PARES es: " + sumaPar);
        System.out.println("-> La suma total de los números IMPARES es: " + sumaImp);
        System.out.println("--------------------------------------------------");

        sc.close();
    }
}