#include <iostream>
#include <fstream>
using namespace std;

int main() {
    // Este programa asume que productos.txt tiene: nombre cantidad precio
    ifstream entrada("productos.txt");
    if (!entrada) {
        cout << "No se pudo abrir productos.txt" << endl;
        return 1;
    }

    ofstream reporte("reporte.txt");

    float descuento;
    cout << "Ingrese el porcentaje de descuento a aplicar: ";
    cin >> descuento;

    string nombre;
    int cantidad;
    float precio;
    float totalGeneral = 0;

    reporte << "Producto\tCantidad\tPrecioFinal\tSubtotal" << endl;

    while (entrada >> nombre >> cantidad >> precio) {
        float precioFinal = precio - (precio * descuento / 100);
        float subtotal = cantidad * precioFinal;
        totalGeneral = totalGeneral + subtotal;

        reporte << nombre << "\t" << cantidad << "\t" << precioFinal << "\t" << subtotal << endl;
    }

    reporte << "Total general: " << totalGeneral << endl;

    entrada.close();
    reporte.close();

    cout << "Reporte generado en reporte.txt" << endl;
    return 0;
}
