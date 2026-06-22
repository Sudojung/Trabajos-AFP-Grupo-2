#include <iostream>
#include <cmath>

using namespace std;

int main() {
    int num, temp, digito, cantidad;
    int suma_digitos, promedio, primer_digito, divisor;

    cout << "Ingrese un número" << endl;
    cin >> num;

    temp = num;
    cantidad = 0;
    suma_digitos = 0;

    while (temp > 0) {
        digito = temp % 10;
        suma_digitos += digito;
        cantidad += 1;
        temp = temp / 10;
    }

    promedio = suma_digitos / cantidad;
    cout << "Cantidad de dígitos: " << cantidad << endl;
    cout << "Promedio de dígitos (cantidad de rotaciones): " << promedio << endl;

    for (int i = 1; i <= promedio; i++) {
        divisor = pow(10, cantidad - 1);
        primer_digito = num / divisor;
        num = (num % divisor) * 10 + primer_digito;

        cout << " Rotación " << i << ": " << num << endl;
    }

    return 0;
}
