#include <iostream>
using namespace std;

int main() {
    int num, invertido = 0, resto;
    cout << "Ingrese un numero entero: ";
    cin >> num;

    bool es_negativo = num < 0;
    if (es_negativo) {
        num = -num;
    }

    while (num > 0) {
        resto = num % 10;
        invertido = (invertido * 10) + resto;
        num /= 10;
    }

    if (es_negativo) {
        invertido = -invertido;
    }

    cout << "El numero invertido es: " << invertido << endl;
    return 0;
}