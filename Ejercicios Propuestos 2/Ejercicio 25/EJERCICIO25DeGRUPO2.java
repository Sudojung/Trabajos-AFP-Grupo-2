import java.util.Scanner;

public class EJERCICIO25DeGRUPO2 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        // Definir M, i, x Como Entero
        // Definir variables de tipo Real (double)
        int M, i, x = 0; // Inicializamos x en 0 para que la condición final no dé problemas
        double suma_inversas, producto, armonica, geometrica;

        System.out.println("Ingrese la cantidad de numeros a evaluar (M):");
        M = sc.nextInt();

        // Si M <= 0 Entonces
        if (M <= 0) {
            System.out.println("Debe ingresar una cantidad mayor a 0.");
        } else {
            suma_inversas = 0;
            producto = 1;

            // Para i <- 1 Hasta M Hacer
            for (i = 1; i <= M; i++) {
                System.out.println("Ingrese el numero " + i + ":");
                x = sc.nextInt();

                // Si en caso ponga cero o negativos
                if (x <= 0) {
                    System.out.println("Error: Solo se admiten numeros enteros POSITIVOS (mayores a 0).");
                    break; // Corta de golpe el bucle 'for', equivalente a forzar i <- M + 1
                } else {
                    suma_inversas = suma_inversas + (1.0 / x);
                    producto = producto * x;
                }
            }

            // Vemos si no hubo errores durante la lectura
            if (x > 0) {
                armonica = M / suma_inversas;
                
                // En Java las potencias se calculan con Math.pow(base, exponente)
                geometrica = Math.pow(producto, 1.0 / M);

                System.out.println("Media Armonica: " + armonica);
                System.out.println("Media Geometrica: " + geometrica);
                
                // Math.abs calcula el Valor Absoluto (ABS)
                System.out.println("Diferencia (Valor Absoluto): " + Math.abs(armonica - geometrica));
            }
        }

        sc.close();
    }
}