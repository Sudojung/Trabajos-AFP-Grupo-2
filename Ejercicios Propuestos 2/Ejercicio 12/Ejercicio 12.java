import java.util.Scanner;

public class EJERCICIO12DeGRUPO2 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        // Definir variables como Entero (int)
        int numCif, d1, d2, d3, d4, temp;

        System.out.println("Ingrese el número cifrado (entero de 4 dígitos):");
        numCif = sc.nextInt();

        // Extraer los dígitos del número cifrado
        // En Java, la división entre enteros descarta los decimales automáticamente (Trunc)
        d1 = numCif / 1000;
        d2 = (numCif % 1000) / 100; // MOD se escribe como %
        d3 = (numCif % 100) / 10;
        d4 = numCif % 10;

        // Revertimos los intercambios de posición
        // Deshacemos 1ro con 3ro
        temp = d1;
        d1 = d3;
        d3 = temp;

        // Deshacemos 2do con 4to
        temp = d2;
        d2 = d4;
        d4 = temp;

        // Revertir sumando 3 
        d1 = (d1 + 3) % 10;
        d2 = (d2 + 3) % 10;
        d3 = (d3 + 3) % 10;
        d4 = (d4 + 3) % 10;

        // Mostrar el dato original revelado (sin espacios entre los dígitos)
        System.out.println("El dato original revelado es: " + d1 + d2 + d3 + d4);

        sc.close();
    }
}
