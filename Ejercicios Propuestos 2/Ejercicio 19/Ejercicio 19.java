import java.util.Scanner;

public class EJERCICIO19DeGRUPO2 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        // Definir primero, segundo Como Entero
        int primero, segundo;

        // Leemos los dos números
        System.out.println("Ingrese el primer número:");
        primero = sc.nextInt();

        System.out.println("Ingrese el segundo número:");
        segundo = sc.nextInt();

        // Calculamos el MCD mediante restas sucesivas
        // Mientras primero <> segundo Hacer
        while (primero != segundo) {

            // Si primero > segundo Entonces
            if (primero > segundo) {
                primero = primero - segundo;
            } else { // SiNo
                segundo = segundo - primero;
            }
        }

        // Mostramos el resultado
        System.out.println("El máximo común divisor es: " + primero);

        sc.close();
    }
}
