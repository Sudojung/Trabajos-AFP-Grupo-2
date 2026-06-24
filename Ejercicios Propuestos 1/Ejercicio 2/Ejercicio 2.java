import java.util.Scanner;
public class Ejercicio2 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Ingrese un número límite: ");
        int n = sc.nextInt();
        int sumaPares = 0, sumaImpares = 0, sumaMult5 = 0;
        for (int i = 1; i <= n; i++) {
            if (i % 2 == 0) sumaPares += i;
            else sumaImpares += i;   
            if (i % 5 == 0) sumaMult5 += i;
        }
        System.out.println("Suma de pares: " + sumaPares);
        System.out.println("Suma de impares: " + sumaImpares);
        System.out.println("Suma de múltiplos de 5: " + sumaMult5);
    }
}
