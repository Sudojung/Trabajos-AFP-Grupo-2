import java.util.Scanner;
public class Ejercicio19 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Ingrese la cantidad en euros: ");
        int cantidad = scanner.nextInt();
        int billetes20 = cantidad / 20;
        cantidad = cantidad % 20;
        int billetes10 = cantidad / 10;
        cantidad = cantidad % 10;
        int billetes5 = cantidad / 5;
        cantidad = cantidad % 5;
        int billetes1 = cantidad;
        System.out.println("Billetes de 20: " + billetes20);
        System.out.println("Billetes de 10: " + billetes10);
        System.out.println("Billetes de 5: " + billetes5);
        System.out.println("Billetes de 1: " + billetes1);
    }
}