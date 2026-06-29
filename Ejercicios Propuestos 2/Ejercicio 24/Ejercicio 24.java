import java.util.Scanner;

public class EJERCICIO24DeGRUPO2 {

    // Funcion es_primo <- VerificarPrimo(num)
    public static boolean VerificarPrimo(int num) {
        boolean es_primo = true;
        int i;

        // El 0 y el 1 no son números primos
        if (num <= 1) {
            es_primo = false;
        } else {
            // Dividimos el número por todos los anteriores para ver si tiene divisores
            // Para i <- 2 Hasta num - 1 Con Paso 1 Hacer
            for (i = 2; i <= num - 1; i++) {
                if (num % i == 0) { // MOD se escribe como %
                    es_primo = false;
                }
            }
        }
        return es_primo;
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        // Definir numero_ingresado, a, b, c, siguiente Como Entero
        int numero_ingresado, a, b, c, siguiente;

        System.out.println("Ingrese un numero natural primo:");
        numero_ingresado = sc.nextInt();

        // Validamos que el usuario realmente ingresó un número primo
        // Se usa "!" para negar una condición (reemplaza a "No")
        if (!VerificarPrimo(numero_ingresado)) {
            System.out.println("Error: El numero ingresado no es primo. Intente con 2, 3, 5, 13, etc.");
        } else {
            a = 1;
            b = 1;

            // Generamos la secuencia de Fibonacci hasta alcanzar o pasarnos del numero
            // Mientras b < numero_ingresado Hacer
            while (b < numero_ingresado) {
                c = a + b;
                a = b;
                b = c;
            }

            // Si al detenernos 'b' es igual al numero ingresado, pertenece a la secuencia
            if (b == numero_ingresado) {
                siguiente = a + b;
                System.out.println("¡enhora buena mi kin hallaste  un numero Fibonacci!");
                System.out.println("La terna es: " + a + ", " + b + ", " + siguiente);
            } else {
                System.out.println("El numero " + numero_ingresado + " es primo, pero NO es un numero Fibonacci.");
            }
        }

        sc.close();
    }
}
