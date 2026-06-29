import java.util.Scanner;

public class EJERCICIO18DeGRUPO2 {
    public static void main(String[] args) {
        // Definir mes Como Entero
        try (Scanner sc = new Scanner(System.in)) {
            // Definir mes Como Entero
            int mes;
            
            System.out.println("Ingrese el número del mes (1 al 12):");
            mes = sc.nextInt();
            
            // Segun mes Hacer
            switch (mes) {
                case 1 -> System.out.println("Enero - 31 días");
                // Detiene la ejecución para que no pase al siguiente mes
                case 2 -> System.out.println("Febrero - 28 días");
                
                case 3 -> System.out.println("Marzo - 31 días");
                
                case 4 -> System.out.println("Abril - 30 días");
                
                case 5 -> System.out.println("Mayo - 31 días");
                
                case 6 -> System.out.println("Junio - 30 días");
                
                case 7 -> System.out.println("Julio - 31 días");
                
                case 8 -> System.out.println("Agosto - 31 días");
                
                case 9 -> System.out.println("Septiembre - 30 días");
                
                case 10 -> System.out.println("Octubre - 31 días");
                
                case 11 -> System.out.println("Noviembre - 30 días");
                
                case 12 -> System.out.println("Diciembre - 31 días");
                
                default -> // Reemplaza a "De Otro Modo:"
                    System.out.println("Mes inválido");
            }
        }
    }
}
