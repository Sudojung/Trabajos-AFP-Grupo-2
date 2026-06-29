import java.util.Scanner;

public class EJERCICIO17DeGRUPO2 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        // Definir variables como Real (double) y Entero (int)
        double a, b, c, d;
        int x;
        double resultado;

        // Ingresamos los coeficientes
        System.out.println("Ingrese el valor de a:");
        a = sc.nextDouble();

        System.out.println("Ingrese el valor de b:");
        b = sc.nextDouble();

        System.out.println("Ingrese el valor de c:");
        c = sc.nextDouble();

        System.out.println("Ingrese el valor de d:");
        d = sc.nextDouble();

        System.out.println("-----------------------------------------");

        // Evaluamos la función para x desde 8 hasta 100
        // Para x <- 8 Hasta 100 Hacer
        for (x = 8; x <= 100; x++) {

            // En Java se usa Math.pow(base, exponente) para las potencias
            resultado = a * Math.pow(x, 4) - b * Math.pow(x, 3) + 2 * c * Math.pow(x, 2) - x + d;

            System.out.println("f(" + x + ") = " + resultado);
        }

        sc.close();
    }
}