#include <iostream>
#include <fstream>
using namespace std;

int main() {
    ifstream archivo("productosPrecios.txt");
    if (!archivo) {
        cout << "No se pudo abrir el archivo productosPrecios.txt" << endl;
        return 1;
    }

    float descuento;
    cout << "Ingrese el porcentaje de descuento: ";
    cin >> descuento;

    string nombre;
    float precio;

    cout << "Producto\tPrecio Final" << endl;
    while (archivo >> nombre >> precio) {
        float precioFinal = precio - (precio * descuento / 100);
        cout << nombre << "\t" << precioFinal << endl;
    }

    archivo.close();
    return 0;
}
