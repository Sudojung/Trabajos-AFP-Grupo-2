public class Ejercicio22 {
    public static void main(String[] args) {
        System.out.println("N\tN²\tN^0.5");
        System.out.println("---\t----\t-----");
        for (double n = 1.0; n <= 1.1; n += 0.001) {
            double cuadrado = n * n;
            double raiz = Math.sqrt(n);
            System.out.printf("%.3f\t%.4f\t%.3f\n", n, cuadrado, raiz);
        }
    }
}