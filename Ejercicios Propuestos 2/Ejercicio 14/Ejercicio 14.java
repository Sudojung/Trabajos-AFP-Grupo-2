import java.util.Scanner;

public class EJERCICIO14DeGRUPO2 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        // Definir variables como Entero (int)
        int limite, i, sumaCuadrados;

        sumaCuadrados = 0;

        // Bucle que se repite y muestra error si no es un entero positivo (Repetir... Hasta Que limite >= 1)
        do {
            System.out.println("Ingrese hasta qué número natural desea sumar sus cuadrados:");
            limite = sc.nextInt();

            // Si se pone 0 o un número negativo, se activa el error
            if (limite < 1) {
                System.out.println("¡Error! El número debe ser un entero positivo mayor o igual a 1.");
                System.out.println("Por favor, intente de nuevo.");
                System.out.println("--------------------------------------------------");
            }
            
        } while (limite < 1); // En Java, el do-while se repite MIENTRAS la condición sea verdadera

        // Para i <- 1 Hasta limite Hacer
        for (i = 1; i <= limite; i++) {
            sumaCuadrados = sumaCuadrados + (i * i);
        }

        // Resultado 
        System.out.println("La suma de los cuadrados de los primeros " + limite + " números es: " + sumaCuadrados);

        sc.close();
    }
}
