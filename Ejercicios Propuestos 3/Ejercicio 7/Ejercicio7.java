import java.util.Scanner;

public class Ejercicio7 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        // Definir n, i, j Como Entero
        // Definir key Como Entero
        int n, i, j;
        int key;

        System.out.println("Ingrese la cantidad de números:");
        n = sc.nextInt();

        // Definir vector Como Entero -> Dimension vector[n]
        int[] vector = new int[n];

        // Para i <- 0 Hasta n - 1 Con Paso 1 Hacer
        for (i = 0; i <= n - 1; i++) {
            System.out.println("Número para la posición " + i + ":");
            vector[i] = sc.nextInt();
        }

        // Algoritmo Insertion Sort
        // Para i <- 1 Hasta n - 1 Con Paso 1 Hacer
        for (i = 1; i <= n - 1; i++) {
            key = vector[i];
            j = i - 1;

            // Mientras j >= 0 Y vector[j] > key Hacer
            // En Java el operador lógico "Y" se escribe como "&&"
            while (j >= 0 && vector[j] > key) {
                vector[j + 1] = vector[j];
                j = j - 1; // Decrementa la posición hacia la izquierda
            }

            vector[j + 1] = key;
        }

        // Mostrar el vector ordenado
        System.out.println("Vector ordenado:");
        // Para i <- 0 Hasta n - 1 Con Paso 1 Hacer
        for (i = 0; i <= n - 1; i++) {
            System.out.print(vector[i] + " "); // Imprime sin saltar de línea
        }
        System.out.println(""); // Salto de línea final

        sc.close();
    }
}