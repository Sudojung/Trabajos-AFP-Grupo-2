import java.util.Scanner;
public class Ejercicio10 {
    public static void main(String[] args) {
        try (Scanner sc = new Scanner(System.in)) {
            System.out.print("Introduzca un número binario: ");
            String binario = sc.next();
            while (binario.length() % 4 != 0) {
                binario = "0" + binario;
            }
            StringBuilder hexadecimal = new StringBuilder();
            String digitosHex = "0123456789ABCDEF";
            for (int i = 0; i < binario.length(); i += 4) {
                String grupo = binario.substring(i, i + 4);
                int valor = Integer.parseInt(grupo, 2);
                hexadecimal.append(digitosHex.charAt(valor));
            }
            System.out.println("El número en hexadecimal es: " + hexadecimal);
        }
    }
}
