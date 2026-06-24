import java.util.Scanner;
public class Ejercicio8 {
    public static void main(String[] args) {
        try (Scanner sc = new Scanner(System.in)) {
            System.out.print("Introduzca un número: ");
            int n = sc.nextInt(); 
            System.out.println("La tabla de multiplicar del " + n + " es:"); 
            for (int i = 1; i <= 10; i++) {
                System.out.printf("%d x %2d = %d\n", n, i, (n * i));
            }
        }
    }
}