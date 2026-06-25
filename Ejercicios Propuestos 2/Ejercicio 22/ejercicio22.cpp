#include <iostream>
using namespace std;

int main() {
    int n;
    cout << "Ingrese un numero entero positivo n: ";
    cin >> n;

    // aca pongo como restricicion ya que se me paso y por querer
    //probar con 0 se me crasheo mi laptop xdd(0 o negativos.)
    if (n <= 0) {
        cout << "El numero debe ser positivo." << endl;
        return 1;
    }

    for (int i = 1; i <= n; i++) {
        // Generar espacios de margen izquierdo
        for (int j = 1; j <= n - i; j++) {
            cout << "  ";
        }

        // Números ascendentes
        for (int j = 0; j <= i - 1; j++) {
            cout << (i + j) % 10 << " ";
        }

        // Números descendentes
        for (int j = i - 2; j >= 0; j--) {
            cout << (i + j) % 10 << " ";
        }
        
        cout << endl; // Siguiente nivel
    }
    return 0;
}