import java.util.Scanner;

public class Ejercicio17 {
    
    static final int NumEmpleados = 50;
    static final double FactorExtra = 1.5;
    
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        System.out.print("¿Cuántos empleados tiene la empresa? ");
        int cantidad = scanner.nextInt();
        
        System.out.print("¿Cuánto paga por hora ordinaria? ");
        double ptas_hora = scanner.nextDouble();
        
        for (int i = 1; i <= cantidad; i++) {
            System.out.print("Horas trabajadas del empleado " + i + ": ");
            double horas_trabajadas = scanner.nextDouble();
            
            double salario;
            
            if (horas_trabajadas <= 40) {
                salario = horas_trabajadas * ptas_hora;
            } else {
                double horas_extras = horas_trabajadas - 40;
                salario = (40 * ptas_hora) + (horas_extras * ptas_hora * FactorExtra);
            }
            
            System.out.println("Empleado " + i + " - Salario: " + salario);
        }
    }
}