import java.util.Scanner;

public class Ejercicio9 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        // Definir n, f, c, k Como Entero
        int n, f, c, k;

        System.out.println("Ingrese el tamaño (n) de las matrices cuadradas:");
        n = sc.nextInt();

        // Dimension matrizA[n, n], matrizB[n, n], resultado[n, n]
        int[][] matrizA = new int[n][n];
        int[][] matrizB = new int[n][n];
        int[][] resultado = new int[n][n];

        System.out.println(" ELEMENTOS DE LA MATRIZ (A) ");
        // Para f <- 0 Hasta n - 1 Hacer
        for (f = 0; f <= n - 1; f++) {
            // Para c <- 0 Hasta n - 1 Hacer
            for (c = 0; c <= n - 1; c++) {
                System.out.println("Elemento A[" + f + "][" + c + "]:");
                matrizA[f][c] = sc.nextInt();
            }
        }

        System.out.println(" ELEMENTOS DE LA MATRIZ (B) : ");
        for (f = 0; f <= n - 1; f++) {
            for (c = 0; c <= n - 1; c++) {
                System.out.println("Elemento B[" + f + "][" + c + "]:");
                matrizB[f][c] = sc.nextInt();
            }
        }

        // Proceso de la multiplicación de las matrices
        for (f = 0; f <= n - 1; f++) {
            for (c = 0; c <= n - 1; c++) {
                resultado[f][c] = 0; // Inicializar la celda antes de acumular
                
                // Para k <- 0 Hasta n - 1 Hacer (Bucle multiplicador)
                for (k = 0; k <= n - 1; k++) {
                    resultado[f][c] = resultado[f][c] + (matrizA[f][k] * matrizB[k][c]);
                }
            }
        }

        // Cómo se ve la matriz A
        System.out.println("\n MATRIZ (A) : ");
        for (f = 0; f <= n - 1; f++) {
            for (c = 0; c <= n - 1; c++) {
                System.out.print(matrizA[f][c] + "  ");
            }
            System.out.println("");
        }

        // Cómo se ve la matriz B
        System.out.println("\n MATRIZ (B) : ");
        for (f = 0; f <= n - 1; f++) {
            for (c = 0; c <= n - 1; c++) {
                System.out.print(matrizB[f][c] + "  ");
            }
            System.out.println("");
        }

        // Resultado
        System.out.println("\n MATRIZ (A x B) es igual a: ");
        for (f = 0; f <= n - 1; f++) {
            for (c = 0; c <= n - 1; c++) {
                System.out.print(resultado[f][c] + "  ");
            }
            System.out.println("");
        }

        sc.close();
    }
}