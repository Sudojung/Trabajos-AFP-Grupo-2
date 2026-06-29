import java.util.Scanner;

public class EJERCICIO16DeGRUPO2 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        // Definir N, temp, digitos Como Entero
        int N, temp, digitos;

        // Validación de entrada (Repetir... Hasta Que N >= 1)
        do {
            System.out.println("Ingrese un número natural:");
            N = sc.nextInt();

            if (N < 1) {
                System.out.println("¡Error! Debe ingresar un número natural (mayor o igual a 1).");
                System.out.println("Por favor, intente de nuevo.");
                System.out.println("--------------------------------------------------");
            }
        } while (N < 1); // Se repite MIENTRAS N sea menor que 1

        digitos = 0;
        temp = N; // Guardamos N en una variable temporal para no borrar el original

        // Mientras temp > 0 Hacer
        while (temp > 0) {
            // Dividimos entre 10; en Java la división de enteros se trunca automáticamente
            temp = temp / 10;

            // Sumamos 1 al contador por cada corte que hacemos
            digitos = digitos + 1;
        }

        // Mostrar el resultado
        System.out.println("El número " + N + " tiene " + digitos + " dígito(s).");

        sc.close();
    }
}
