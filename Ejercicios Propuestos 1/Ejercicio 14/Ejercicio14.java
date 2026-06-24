import java.util.Scanner;
public class Ejercicio14 {
    public static void main(String[] args) {
        try (Scanner sc = new Scanner(System.in)) {
            int num, mayor = Integer.MIN_VALUE, menor = Integer.MAX_VALUE;
            int suma = 0, contador = 0;
            System.out.println("Ingrese números (0 para finalizar):");
            while (true) {
                num = sc.nextInt();
                if (num == 0) break;
                if (num > mayor) mayor = num;
                if (num < menor) menor = num;
                suma += num;
                contador++;
            }
            if (contador > 0) {
                System.out.println("Mayor: " + mayor);
                System.out.println("Menor: " + menor);
                System.out.println("Media: " + (double) suma / contador);
            } else {
                System.out.println("No se ingresaron números.");
            }
        }
    }
}