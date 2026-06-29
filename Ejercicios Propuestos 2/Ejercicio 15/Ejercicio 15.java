import java.util.Scanner;

public class EJERCICIO15DeGRUPO2 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        // Definir variables como Real (double)
        double A, B, C, D;
        double maxInicio, minFin;

        // Validación del Primer Intervalo [a, b]
        do {
            System.out.println("Primer Intervalo [a, b] ");
            System.out.println("Ingrese el valor de inicio (a):");
            A = sc.nextDouble();
            System.out.println("Ingrese el valor de fin (b):");
            B = sc.nextDouble();

            if (A > B) {
                System.out.println("¡Error! El inicio A no puede ser mayor que el fin B.");
                System.out.println("--------------------------------------------------");
            }
        } while (A > B); // Se repite MIENTRAS A sea mayor que B

        // Validación del Segundo Intervalo [c, d]
        do {
            System.out.println("Segundo Intervalo [c, d] ");
            System.out.println("Ingrese el valor de inicio (c):");
            C = sc.nextDouble();
            System.out.println("Ingrese el valor de fin (d):");
            D = sc.nextDouble();

            if (C > D) {
                System.out.println("¡Error! El inicio C no puede ser mayor que el fin D.");
                System.out.println("--------------------------------------------------");
            }
        } while (C > D); // Se repite MIENTRAS C sea mayor que D

        // Encontrar el inicio de la intersección (el MÁXIMO entre a y c)
        if (A > C) {
            maxInicio = A;
        } else {
            maxInicio = C;
        }

        // Encontrar el fin de la intersección (el MÍNIMO entre b y d)
        if (B < D) {
            minFin = B;
        } else {
            minFin = D;
        }

        System.out.println("--------------------------------------------------");
        
        // Evaluamos si realmente chocan o están separados
        if (maxInicio <= minFin) {
            System.out.println("La intersección de los intervalos es: [" + maxInicio + " , " + minFin + "]");
        } else {
            System.out.println("Los intervalos no se cruzan.");
        }
        System.out.println("--------------------------------------------------");

        sc.close();
    }
}
