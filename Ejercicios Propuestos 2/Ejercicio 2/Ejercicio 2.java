import java.util.Scanner;

public class EJERCICIO2DeGRUPO2 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        // Definir variables como Real (double) y Entero (int)
        double base, num, den, potencia, resultado, raizz;
        int i;

        System.out.print("Ingrese la base (número real): ");
        base = sc.nextDouble();

        System.out.print("Ingrese el numerador del exponente: ");
        num = sc.nextDouble();

        System.out.print("Ingrese el denominador del exponente: ");
        den = sc.nextDouble();

        // Calculamos base^num
        potencia = 1;
        for (i = 1; i <= num; i++) {
            potencia = potencia * base;
        }

        // Calculamos la raíz den-ésima de la potencia
        raizz = potencia / den;   // Valor inicial aproximado

        // 50 iteraciones para mejorar precisión (Método de Newton-Raphson)
        for (i = 1; i <= 50; i++) {
            // En Java, el operador '^' no es para potencias, se usa Math.pow(base, exponente)
            raizz = ((den - 1) * raizz + (potencia / Math.pow(raizz, den - 1))) / den;
        }

        resultado = raizz;

        // Mostrar el resultado
        System.out.println("El resultado de " + base + " elevado a " + (int)num + "/" + (int)den + " es: " + resultado);

        sc.close();
    }
}
