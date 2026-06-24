import java.util.Scanner;

public class Ejercicio4 {
    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);

        int num, temp, digito;
        int cantidad = 0;
        int sumaDigitos = 0;
        int promedio;
        int primerDigito;
        int divisor;

        System.out.print("Ingrese un número: ");
        num = sc.nextInt();

        temp = num;

        // Calcular cantidad y suma de dígitos
        while (temp > 0) {
            digito = temp % 10;
            sumaDigitos += digito;
            cantidad++;
            temp /= 10;
        }

        promedio = sumaDigitos / cantidad;

        System.out.println("Cantidad de dígitos: " + cantidad);
        System.out.println("Promedio de dígitos: " + promedio);

        // Realizar las rotaciones
        for (int i = 1; i <= promedio; i++) {
            divisor = (int) Math.pow(10, cantidad - 1);

            primerDigito = num / divisor;
            num = (num % divisor) * 10 + primerDigito;

            System.out.println("Rotación " + i + ": " + num);
        }

        sc.close();
    }
}
