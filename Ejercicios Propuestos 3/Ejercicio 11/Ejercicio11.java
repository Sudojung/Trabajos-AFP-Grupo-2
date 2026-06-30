import java.util.Scanner;

public class Ejercicio11 {

    // Funcion Intercambiar (a Por Referencia, b Por Referencia)
    // Usamos arreglos int[] para poder modificar los valores reales de origen
    public static void Intercambiar(int[] a, int[] b) {
        int aux;
        
        aux = a[0];
        a[0] = b[0];
        b[0] = aux;
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        // Declaramos los números como arreglos de tamaño 1 para simular la referencia
        int[] num1 = new int[1];
        int[] num2 = new int[1];

        System.out.println("Ingrese el primer número:");
        num1[0] = sc.nextInt();
        
        System.out.println("Ingrese el segundo número:");
        num2[0] = sc.nextInt();

        System.out.println(" ANTES (Valores iniciales): num1 = " + num1[0] + " ; num2 = " + num2[0]);

        // Aplicamos la función pasando las referencias de los contenedores
        Intercambiar(num1, num2);

        System.out.println(" AHORA (Valores intercambiados): num1 = " + num1[0] + " ; num2 = " + num2[0]);

        sc.close();
    }
}