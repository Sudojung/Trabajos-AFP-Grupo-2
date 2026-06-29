import java.util.Scanner;

public class EJERCICIO20DeGRUPO2 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        // Definir numero, residuo Como Entero
        // Definir binario Como Cadena (String)
        int numero, residuo;
        String binario;

        // Validación de entrada (Repetir... Hasta Que numero >= 0)
        do {
            System.out.println("Ingrese un número decimal positivo:");
            numero = sc.nextInt();

            if (numero < 0) {
                System.out.println("Error: Debe ingresar un número positivo.");
            }
        } while (numero < 0); // Se repite MIENTRAS el número sea negativo

        binario = "";

        // Caso especial para el cero
        if (numero == 0) {
            binario = "0";
        } else {
            // Convertimos el número a binario
            while (numero > 0) {
                residuo = numero % 2; // MOD se escribe como %
                
                // Concatenamos el residuo al inicio de la cadena actual
                binario = residuo + binario; 
                
                // En Java la división de enteros se trunca automáticamente
                numero = numero / 2; 
            }
        }

        System.out.println("El número en binario es: " + binario);

        sc.close();
    }
}