import java.util.Scanner;

public class Ejercicio15 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n, f, c;
        boolean es_simetrica;

        System.out.println("Ingrese el tamaño (n) de la matriz cuadrada:");
        n = sc.nextInt();

        int[][] matriz = new int[n][n];

        for (f = 0; f <= n - 1; f++) {
            for (c = 0; c <= n - 1; c++) {
                System.out.println("Valor para la posición [" + f + "][" + c + "]:");
                matriz[f][c] = sc.nextInt();
            }
        }

        es_simetrica = true;

        for (f = 0; f <= n - 1; f++) {
            for (c = 0; c <= n - 1; c++) {
                if (matriz[f][c] != matriz[c][f]) {
                    es_simetrica = false;
                }
            }
        }

        System.out.println("MATRIZ:");
        for (f = 0; f <= n - 1; f++) {
            for (c = 0; c <= n - 1; c++) {
                System.out.print(matriz[f][c] + "  ");
            }
            System.out.println("");
        }

        System.out.println("--------------------------------------------------");
        if (es_simetrica) {
            System.out.println("La matriz es SIMÉTRICA.");
        } else {
            System.out.println("La matriz NO es simétrica.");
        }
        sc.close();
    }
}