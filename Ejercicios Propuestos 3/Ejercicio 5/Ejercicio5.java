import java.util.Scanner;

public class Ejercicio5 {

    // Funcion resultado <- CalcularFactorial (n)
    public static double CalcularFactorial(int n) {
        double resultado;
        int i;
        
        resultado = 1; // El factorial de 0 es 1
        
        // Si n > 0 Entonces
        if (n > 0) {
            // Para i <- 1 Hasta n Hacer
            for (i = 1; i <= n; i++) {
                resultado = resultado * i;
            }
        }
        return resultado;
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        // Definir numero Como Entero
        // Definir facto Como Real (double)
        int numero;
        double facto;

        System.out.println("Ingrese un número entero positivo:");
        numero = sc.nextInt();

        // Si numero >= 0 Entonces
        if (numero >= 0) {
            facto = CalcularFactorial(numero);
            System.out.println("El factorial de " + numero + " es: " + facto);
        } else { // Sino
            System.out.println("El factorial no existe para números negativos.");
        }

        sc.close();
    }
}