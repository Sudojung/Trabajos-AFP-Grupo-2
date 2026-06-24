import java.util.Scanner;

public class Ejercicio5 {
    public static void main(String[] args) {
        try (Scanner sc = new Scanner(System.in)) {
            int totalLeidos = 0;
            int bisiestosEncontrados = 0;
            System.out.println("--- Analizador de Años Bisiestos ---");
            System.out.println("Condiciones de parada: 10 años leídos o 3 bisiestos hallados.");
            while (totalLeidos < 10 && bisiestosEncontrados < 3) {
                System.out.print("Introduzca un año: ");
                if (sc.hasNextInt()) {
                    int anio = sc.nextInt();
                    totalLeidos++;
                    if ((anio % 4 == 0 && anio % 100 != 0) || (anio % 400 == 0)) {
                        bisiestosEncontrados++;
                        System.out.println("-> " + anio + " ES bisiesto.");
                    } else {
                        System.out.println("-> " + anio + " NO es bisiesto.");
                    }
                } else {
                    System.out.println("Error: Por favor, introduzca un número válido.");
                    sc.next(); // Limpiar el buffer si el usuario escribe texto
                }
            }
            System.out.println("\n--- Resumen Final ---");
            System.out.println("Años procesados: " + totalLeidos);
            System.out.println("Bisiestos hallados: " + bisiestosEncontrados);
        } 
    }
}