import java.util.Scanner;

public class EJERCICIO71DeGRUPO2 {

    // SubProceso res <- CalcularFactorial(numero)
    public static double CalcularFactorial(int numero) {
        double res = 1;
        int i;
        
        if (numero > 0) {
            // Para i <- 1 Hasta numero Hacer
            for (i = 1; i <= numero; i++) {
                res = res * i;
            }
        }
        return res;
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        // Definir N, K Como Entero
        // Definir variables de tipo Real (double)
        int N, K;
        double porcentaje_p, p, q, combinatoria, prob;
        double factN, factK, factNK;

        System.out.println("Ingrese N (número total de ensayos):");
        N = sc.nextInt();

        // Repetir... Hasta Que porcentaje_p > 0 Y porcentaje_p <= 100
        do {
            System.out.println("Ingrese la probabilidad de éxito, ejemplo:50 (en porcentaje 50=50%):");
            porcentaje_p = sc.nextDouble();

            // Si porcentaje_p <= 0 O porcentaje_p > 100 Entonces
            // Usamos "||" para el operador lógico "O"
            if (porcentaje_p <= 0 || porcentaje_p > 100) {
                System.out.println("¡ERROR! El porcentaje debe ser mayor a 0 y máximo 100. Intente de nuevo.");
            }
            
        } while (porcentaje_p <= 0 || porcentaje_p > 100); // En Java se repite MIENTRAS la condición sea verdadera (datos incorrectos)

        // Aquí el número de porcentaje se convierte en decimal, ejemplo 50% = 0.5 
        p = porcentaje_p / 100;
        q = 1 - p;

        System.out.println("____________________________________");
        System.out.println("K         |    Probabilidad P(K)");
        System.out.println("------------------------------------");

        // Para K <- 0 Hasta N Hacer
        for (K = 0; K <= N; K++) {

            // Invocación al SubProceso/Función secundario
            factN = CalcularFactorial(N);
            factK = CalcularFactorial(K);
            factNK = CalcularFactorial(N - K);

            combinatoria = factN / (factK * factNK);

            // En Java se usa Math.pow(base, exponente) para las potencias
            prob = combinatoria * Math.pow(p, K) * Math.pow(q, N - K);

            System.out.println(K + "       |    " + prob);
        }

        sc.close();
    }
}
