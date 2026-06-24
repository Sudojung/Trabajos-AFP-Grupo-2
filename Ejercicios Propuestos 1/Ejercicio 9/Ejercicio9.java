import java.util.Scanner;

public class Ejercicio9 {
    public static void main(String[] args) {
        try (Scanner sc = new Scanner(System.in)) {
            System.out.print("Ingrese el valor inicial (n): ");
            int n = sc.nextInt();
            System.out.print("Ingrese el valor final (m): ");
            int m = sc.nextInt();
            int a = 0, b = 1;
            System.out.println("Serie de Fibonacci entre " + n + " y " + m + ":");
            while (a <= m) {
                if (a >= n) {
                    System.out.print(a + " ");
                }
                int siguiente = a + b;
                a = b;
                b = siguiente;
            }
        }
    }
}
