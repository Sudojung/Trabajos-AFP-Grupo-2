import java.util.Scanner;

public class Ejercicio8 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        // Definir n, m, f, c Como Entero
        int n, m, f, c;

        System.out.println("Ingrese el número de filas (n):");
        n = sc.nextInt();
        System.out.println("Ingrese el número de columnas (m):");
        m = sc.nextInt();

        // Dimension Elemento[n, m], transpuesta[m, n]
        int[][] Elemento = new int[n][m];
        int[][] transpuesta = new int[m][n];

        // Elementos de la matriz
        // Para f <- 0 Hasta n - 1 Hacer
        for (f = 0; f <= n - 1; f++) {
            // Para c <- 0 Hasta m - 1 Hacer
            for (c = 0; c <= m - 1; c++) {
                System.out.println("Valor para la posición [" + f + "][" + c + "]:");
                Elemento[f][c] = sc.nextInt();
            }
        }

        // Cómo se vería la matriz original
        System.out.println("MATRIZ:");
        for (f = 0; f <= n - 1; f++) {
            for (c = 0; c <= m - 1; c++) {
                System.out.print(Elemento[f][c] + "  ");
            }
            System.out.println(""); // Salto de línea por fila
        }

        // El proceso de la matriz transpuesta
        // Para f <- 0 Hasta n - 1 Hacer
        for (f = 0; f <= n - 1; f++) {
            // Para c <- 0 Hasta m - 1 Hacer
            for (c = 0; c <= m - 1; c++) {
                transpuesta[c][f] = Elemento[f][c];
            }
        }

        // Mostrar la MATRIZ TRANSPUESTA
        System.out.println("MATRIZ TRANSPUESTA:");
        // Para f <- 0 Hasta m - 1 Hacer (Nota que ahora va hasta m - 1)
        for (f = 0; f <= m - 1; f++) {
            // Para c <- 0 Hasta n - 1 Hacer (Nota que ahora va hasta n - 1)
            for (c = 0; c <= n - 1; c++) {
                System.out.print(transpuesta[f][c] + "  ");
            }
            System.out.println(""); // Salto de línea por fila
        }

        sc.close();
    }
}