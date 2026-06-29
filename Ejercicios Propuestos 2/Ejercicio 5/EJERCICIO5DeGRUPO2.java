import java.util.Scanner;

public class EJERCICIO5DeGRUPO2 {

    // Función para sacar el Máximo Común Divisor (MCD)
    public static int sacarMCD(int a, int b) {
        int temp;
        while (b != 0) { // En Java, "<>" se escribe como "!="
            temp = b;
            b = a % b;   // "MOD" se escribe como "%"
            a = temp;
        }
        return a;
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        int num1, den1, num2, den2;
        int numSuma, denSuma, numProd, denProd, mcd;

        // Lectura de datos
        System.out.println("Fracción 1 - Numerador:");
        num1 = sc.nextInt();
        System.out.println("Fracción 1 - Denominador:");
        den1 = sc.nextInt();

        System.out.println("Fracción 2 - Numerador:");
        num2 = sc.nextInt();
        System.out.println("Fracción 2 - Denominador:");
        den2 = sc.nextInt();

        // Si den1 = 0 O den2 = 0 Entonces
        if (den1 == 0 || den2 == 0) { // El operador "O" en Java es "||"
            System.out.println("Error: El denominador no puede ser cero.");
        } else {
            // Simplificamos ambas fracciones antes de operar
            mcd = sacarMCD(num1, den1);
            num1 = num1 / mcd; // En Java, la división entre enteros ya descarta los decimales de forma automática
            den1 = den1 / mcd;

            mcd = sacarMCD(num2, den2);
            num2 = num2 / mcd;
            den2 = den2 / mcd;

            System.out.println("Fracciones listas para operar: " + num1 + "/" + den1 + " y " + num2 + "/" + den2);

            // Hacemos la SUMA
            numSuma = (num1 * den2) + (num2 * den1);
            denSuma = den1 * den2;

            // Simplificamos la suma
            mcd = sacarMCD(numSuma, denSuma);
            numSuma = numSuma / mcd;
            denSuma = denSuma / mcd;

            // Hacemos el PRODUCTO
            numProd = num1 * num2;
            denProd = den1 * den2;

            // Simplificamos el producto
            mcd = sacarMCD(numProd, denProd);
            numProd = numProd / mcd;
            denProd = denProd / mcd;

            System.out.println("Resultado de la SUMA: " + numSuma + "/" + denSuma);
            System.out.println("Resultado del PRODUCTO: " + numProd + "/" + denProd);
        }

        sc.close();
    }   
}