import java.util.Random;
import java.util.Scanner;

public class EJERCICIO8DeGRUPO2 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        Random rand = new Random();

        // Se inicializan en 0 para evitar que el compilador proteste si el flujo no entra al while
        int dia1 = 0, mes1 = 0, anio1 = 0;
        int dia2 = 0, mes2 = 0, anio2 = 0;
        int maxInt, intentos;

        // Genera un número aleatorio entre 1 y 10
        maxInt = rand.nextInt(10) + 1;
        intentos = 0;

        System.out.println("¡El sistema ha asignado el límite de intentos!");
        System.out.println("Para este programa tienes un máximo de: " + maxInt + " intentos.");
        System.out.println("--------------------------------------------------");

        System.out.println("Ingrese el DÍA de la primera fecha (Escriba 0 para salir):");
        dia1 = sc.nextInt();

        while (dia1 != 0 && intentos < maxInt) {

            System.out.println("Ingrese el MES de la primera fecha:");
            mes1 = sc.nextInt();
            System.out.println("Ingrese el AÑO de la primera fecha:");
            anio1 = sc.nextInt();

            System.out.println("--- Segunda Fecha ---");
            System.out.println("Ingrese el DÍA de la segunda fecha:");
            dia2 = sc.nextInt();
            System.out.println("Ingrese el MES de la segunda fecha:");
            mes2 = sc.nextInt();
            System.out.println("Ingrese el AÑO de la segunda fecha:");
            anio2 = sc.nextInt();

            System.out.println("--------------------------------------------------");

            // Comparación de las fechas
            if (anio1 < anio2) {
                System.out.println("-> La primera fecha (" + dia1 + "/" + mes1 + "/" + anio1 + ") es anterior.");
            } else if (anio1 > anio2) {
                System.out.println("-> La segunda fecha (" + dia2 + "/" + mes2 + "/" + anio2 + ") es anterior.");
            } else {
                if (mes1 < mes2) {
                    System.out.println("-> La primera fecha es anterior.");
                } else if (mes1 > mes2) {
                    System.out.println("-> La segunda fecha es anterior.");
                } else {
                    if (dia1 < dia2) {
                        System.out.println("-> La primera fecha es anterior.");
                    } else if (dia1 > dia2) {
                        System.out.println("-> La segunda fecha es anterior.");
                    } else {
                        System.out.println("-> Ambas fechas son exactamente iguales.");
                    }
                }
            }

            System.out.println("--------------------------------------------------");

            intentos = intentos + 1;

            if (intentos < maxInt) {
                System.out.println("Ingrese el DÍA de la siguiente primera fecha (Escriba 0 para salir):");
                dia1 = sc.nextInt();
            }
        }

        if (intentos >= maxInt) {
            System.out.println("Lo siento, se acabaron sus intentos.");
        } else {
            System.out.println("Programa finalizado exitosamente.");
        }

        sc.close();
    }
}
