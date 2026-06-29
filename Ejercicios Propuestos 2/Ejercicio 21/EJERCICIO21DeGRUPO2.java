import java.util.Scanner;

public class EJERCICIO21DeGRUPO2 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        // Definir num, invertido, resto Como Entero
        // Definir es_negativo Como Logico (boolean)
        int num, invertido, resto;
        boolean es_negativo;

        System.out.println("Ingrese un numero entero:");
        num = sc.nextInt();

        invertido = 0;
        
        // Si se da el caso de que el número es negativo, extraemos el signo
        // es_negativo <- num < 0
        es_negativo = num < 0;
        if (es_negativo) {
            num = num * (-1);
        }

        // Mientras num > 0 Hacer
        while (num > 0) {
            resto = num % 10; // MOD se escribe como %
            invertido = (invertido * 10) + resto;
            
            // En Java la división de enteros se trunca automáticamente
            num = num / 10; 
        }

        // Restauramos el signo negativo si correspondía
        if (es_negativo) {
            invertido = invertido * (-1);
        }

        System.out.println("El numero invertido es: " + invertido);

        sc.close();
    }
}