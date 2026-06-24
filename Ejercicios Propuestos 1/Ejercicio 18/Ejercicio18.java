import java.util.Scanner;
public class Ejercicio18 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("¿Cuántos números naturales? ");
        int P = scanner.nextInt();
        System.out.println("Número\tCuadrado\tCubo\tRaíz Cuadrada");
        System.out.println("------\t--------\t----\t-------------");
        for (int i = 1; i <= P; i++) {
            int cuadrado = i * i;
            int cubo = i * i * i;
            double raiz = Math.sqrt(i);
            System.out.println(i + "\t" + cuadrado + "\t\t" + cubo + "\t" + raiz);
        }
    }
}