import java.util.Scanner;
public class Ejercicio15 {
    public static void main(String[] args) {
        try (Scanner sc = new Scanner(System.in)) {
            System.out.print("¿Cuántos términos de Fibonacci desea?: ");
            int n = sc.nextInt();
            long t1 = 1, t2 = 1;
            System.out.print("Sucesión: ");
            for (int i = 1; i <= n; i++) {
                System.out.print(t1 + (i < n ? ", " : ""));
                long suma = t1 + t2;
                t1 = t2;
                t2 = suma;
            }
            System.out.println(); 
        }
    }
}
