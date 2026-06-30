import java.util.Scanner;

public class Ejercicio14 {

    public static void OrdenarVector(int[] vector, int n) {
        int i, j, aux;
        for (i = 0; i <= n - 2; i++) {
            for (j = 0; j <= n - i - 2; j++) {
                if (vector[j] > vector[j + 1]) {
                    aux = vector[j];
                    vector[j] = vector[j + 1];
                    vector[j + 1] = aux;
                }
            }
        }
    }

    public static void ImprimirVector(int[] vector, int n) {
        int i;
        for (i = 0; i <= n - 1; i++) {
            System.out.print(vector[i] + " ");
        }
        System.out.println("");
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n, i;

        System.out.println("Ingrese la cantidad de elementos del vector:");
        n = sc.nextInt();

        int[] mis_numeros = new int[n];

        for (i = 0; i <= n - 1; i++) {
            System.out.println("Ingrese el valor para la posición " + i + ":");
            mis_numeros[i] = sc.nextInt();
        }

        System.out.println("Vector original:");
        ImprimirVector(mis_numeros, n);

        OrdenarVector(mis_numeros, n);

        System.out.println("Vector ordenado:");
        ImprimirVector(mis_numeros, n);

        sc.close();
    }
}