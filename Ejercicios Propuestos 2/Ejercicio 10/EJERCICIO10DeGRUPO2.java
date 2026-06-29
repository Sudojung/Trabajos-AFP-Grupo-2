import java.util.Scanner;

public class EJERCICIO10DeGRUPO2 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        // Definir n, i, factorial Como Entero
        int n, i;
        long factorial; // Usamos long porque los factoriales crecen muy rápido y superan el límite de un 'int'

        // Bucle que se repite y muestra error si no es natural (Repetir... Hasta Que n >= 1)
        do {
            System.out.print("Introduzca un entero positivo: ");
            n = sc.nextInt();

            // Si se escribe un número menor a 1 sale el error
            if (n < 1) {
                System.out.println("¡Error! Debe ingresar un número natural.");
            }
            
        } while (n < 1); // En Java, el do-while se repite MIENTRAS la condición sea verdadera

        factorial = 1;
        i = 1;

        // Mientras i <= n Hacer
        while (i <= n) {
            factorial = factorial * i;
            i = i + 1;
        }

        // Mostrar el resultado
        System.out.println("El factorial de " + n + " es: " + factorial);

        sc.close();
    }
}