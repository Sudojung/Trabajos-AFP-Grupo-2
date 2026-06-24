import java.util.Scanner;
public class Ejercicio16 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in); 
        System.out.print("Ingrese un número natural positivo: ");
        int numero = scanner.nextInt();   
        int suma = 0;
        for (int i = 1; i < numero; i++) {
            if (numero % i == 0) {
                suma += i;
            }
        }
        if (suma == numero) {
            System.out.println(numero + " es un número perfecto");
        } else {
            System.out.println(numero + " NO es un número perfecto");
        }
    }
}