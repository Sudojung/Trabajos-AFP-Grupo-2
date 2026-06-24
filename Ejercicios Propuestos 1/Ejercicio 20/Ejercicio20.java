import java.util.Scanner;
public class Ejercicio20 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("¿Cuál es el n-ésimo número triangular? ");
        int n = scanner.nextInt();
        int triangular = 0;
        for (int i = 1; i <= n; i++) {
            triangular += i;
        }
        System.out.println("El número triangular " + n + " es: " + triangular);
    }
}