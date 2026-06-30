import java.util.Scanner;

public class Ejercicio10 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        // Definir n, i Como Entero
        int n, i;

        System.out.println("Ingrese el tamaño del vector:");
        n = sc.nextInt();

        // Definir vector Como Entero -> Dimension vector[n]
        // En Java esto reserva memoria dinámica basándose en el valor de n
        int[] vector = new int[n];

        System.out.println("Llenando el vector...");
        // Para i <- 0 Hasta n - 1 Hacer
        for (i = 0; i <= n - 1; i++) {
            System.out.println("Valor para la posición " + i + ":");
            vector[i] = sc.nextInt();
        }

        System.out.println("Vector dinámico:");
        // Para i <- 0 Hasta n - 1 Hacer
        for (i = 0; i <= n - 1; i++) {
            System.out.print(vector[i] + " "); // Imprime sin saltar de línea
        }
        System.out.println(""); // Salto de línea final

        sc.close();
    }
}