import java.util.Scanner;

public class Ejercicio6 {
    
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        System.out.print("Ingrese el ángulo en grados (0 a 360): ");
        double angulo = scanner.nextDouble();
        
        if (angulo < 0 || angulo > 360) {
            System.out.println("Error: debe estar entre 0 y 360");
            return;
        }
    
        double radianes = Math.toRadians(angulo);
        
        double seno = radianes - (radianes * radianes * radianes) / 6 
                    + (radianes * radianes * radianes * radianes * radianes) / 120;
        
        System.out.println("Seno de " + angulo + "° = " + seno);
    }
}