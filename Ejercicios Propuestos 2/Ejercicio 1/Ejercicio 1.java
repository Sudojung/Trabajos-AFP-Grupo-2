import java.util.Scanner;

public class EJERCICIODeGRUPO2 {
    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);

        int limite;
        int i;
        long factorial = 1;

        // Validación del número
        do {
            System.out.println("Ingrese un número entero positivo (>= 1):");
            limite = sc.nextInt();

            if (limite < 1) {
                System.out.println("Error: número no válido.");
                System.out.println("Intente nuevamente.");
                System.out.println("-------------------------");
            }

        } while (limite < 1);

        System.out.println("-------------------------");
        System.out.println("Los factoriales hasta " + limite + " son:");

        // Cálculo de factoriales sucesivos
        for (i = 1; i <= limite; i++) {
            factorial = factorial * i;
            System.out.println("Factorial de " + i + " = " + factorial);
        }

        sc.close();
    }
}
