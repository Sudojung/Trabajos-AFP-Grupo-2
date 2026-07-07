#include <iostream>
using namespace std;

int invertirNumero(int n) {
    int invertido = 0;
    while (n > 0) {
        int digito = n % 10;
        invertido = invertido * 10 + digito;
        n = n / 10;
    }
    return invertido;
}

int main() {
    int numero;
    cout << "Ingrese un numero entero: ";
    cin >> numero;

    cout << "Numero invertido: " << invertirNumero(numero) << endl;
    return 0;
}
