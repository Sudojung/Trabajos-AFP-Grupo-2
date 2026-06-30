import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;

public class Ejercicio13 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        String producto;
        double precio, descuento, precio_final;

        System.out.println("Ingrese el porcentaje de descuento a aplicar (0-100):");
        descuento = sc.nextDouble();

        System.out.println("Procesando productos desde 'productos.txt'...");
        System.out.println("--------------------------------------------------");

        try {
            File archivo = new File("productos.txt");
            Scanner lector = new Scanner(archivo);

            while (lector.hasNext()) {
                producto = lector.next();
                precio = lector.nextDouble();

                precio_final = precio - (precio * (descuento / 100));

                System.out.println("Producto: " + producto + " | Precio Original: $" + precio + " | Con Descuento: $" + precio_final);
            }
            lector.close();
            System.out.println("--------------------------------------------------");
            System.out.println("Proceso de descuento finalizado con éxito.");

        } catch (FileNotFoundException e) {
            System.out.println("Error: No se encontró el archivo 'productos.txt'.");
        }
        sc.close();
    }
}