import java.util.Scanner;

public class Ejercicio4 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        // Definir cantidad, i Como Entero
        // Definir maximo, minimo Como Real (double)
        int cantidad, i;
        double maximo, minimo;

        System.out.println("Ingrese la cantidad de elementos:");
        cantidad = sc.nextInt();

        // Definir vectorNumeros Como Real -> Dimension vectorNumeros[cantidad]
        double[] vectorNumeros = new double[cantidad];

        // Para i <- 0 Hasta cantidad - 1 Hacer
        for (i = 0; i <= cantidad - 1; i++) {
            System.out.println("Valor para la posición " + i + ":");
            vectorNumeros[i] = sc.nextDouble();
        }

        // maximo <- vectorNumeros[0]
        // minimo <- vectorNumeros[0]
        maximo = vectorNumeros[0];
        minimo = vectorNumeros[0];

        // Para i <- 1 Hasta cantidad - 1 Con Paso 1 Hacer
        for (i = 1; i <= cantidad - 1; i++) {
            
            // Si vectorNumeros[i] > maximo Entonces
            if (vectorNumeros[i] > maximo) {
                maximo = vectorNumeros[i];
            }

            // Si vectorNumeros[i] < minimo Entonces
            if (vectorNumeros[i] < minimo) {
                minimo = vectorNumeros[i];
            }
        }

        // Escribir los resultados finales
        System.out.println("El elemento MÁXIMO del vector es: " + maximo);
        System.out.println("El elementos MÍNIMO del vector es: " + minimo);

        sc.close();
    }
}