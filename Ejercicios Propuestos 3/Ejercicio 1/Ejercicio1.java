import java.util.Scanner;

public class Ejercicio1 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        // Definir cantidad, i, suma Como Entero
        int cantidad, i, suma;
        suma = 0;

        System.out.println("Ingrese la cantidad de elementos que tendrá el vector:");
        cantidad = sc.nextInt();

        // Dimension vectorNumeros[cantidad]
        // Creamos el arreglo (vector) en Java con el tamaño ingresado
        int[] vectorNumeros = new int[cantidad];

        // Lectura de elementos y cálculo de la suma
        System.out.println("Ingrese los números enteros uno por uno:");

        // Para i <- 0 Hasta cantidad - 1 Con Paso 1 Hacer
        for (i = 0; i <= cantidad - 1; i++) {
            System.out.println("Valor para la posición " + i + ":");
            vectorNumeros[i] = sc.nextInt();

            suma = suma + vectorNumeros[i];
        }

        // Resultado final
        System.out.println("La suma total de los elementos del vector es: " + suma);

        sc.close();
    }
}