import java.util.Scanner;

public class EJERCICIO9DeGRUPO2 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        // Definir variables como Entero (int)
        int inicio, fin, tope, i, j, resultado;

        // Rangos de las tablas:
        System.out.println("¿Desde qué tabla desea iniciar?");
        inicio = sc.nextInt();

        System.out.println("¿Hasta qué tabla desea llegar?");
        fin = sc.nextInt(); 

        // Límite de la multiplicación
        System.out.println("¿Hasta qué número desea multiplicar en cada tabla?");
        tope = sc.nextInt();

        System.out.println("--------------------------------------------------");

        // Proceso de generar las tablas (Ciclos Para anidados)
        for (i = inicio; i <= fin; i++) {
            System.out.println("=========================");
            System.out.println("      TABLA DEL " + i);
            System.out.println("========================");

            // Proceso de las multiplicaciones
            for (j = 1; j <= tope; j++) {
                resultado = i * j;
                System.out.println(i + " x " + j + " = " + resultado);
            }

            System.out.println(""); // Espacio en blanco entre tablas
        }

        sc.close();
    }
}