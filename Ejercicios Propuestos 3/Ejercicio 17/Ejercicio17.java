import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;

public class Ejercicio17 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        String producto;
        double precio, descuento, precio_final;
        int cantidad;

        System.out.println("Ingrese el porcentaje de descuento general a aplicar (0-100):");
        descuento = sc.nextDouble();

        System.out.println("GENERANDO REPORTE FINAL DE INVENTARIO");
        System.out.println("==================================================================");

        try {
            File archivo = new File("productos.txt");
            Scanner lector = new Scanner(archivo);

            while (lector.hasNext()) {
                producto = lector.next();
                precio = lector.nextDouble();
                cantidad = lector.nextInt();

                precio_final = precio - (precio * (descuento / 100));

                System.out.println("Producto: " + producto);
                System.out.println("  - Cantidad en Stock: " + cantidad);
                System.out.println("  - Precio Original: $" + precio);
                System.out.println("  - Precio con Descuento: $" + precio_final);
                System.out.println("------------------------------------------------------------------");
            }
            lector.close();
            System.out.println("Reporte finalizado con éxito.");

        } catch (FileNotFoundException e) {
            System.out.println("Error: No se encontró el archivo 'productos.txt'.");
        }
        sc.close();
    }
}