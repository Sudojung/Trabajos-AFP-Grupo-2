#include <iostream>
using namespace std;

int mcd(int a, int b) {
    while (b != 0) {
        int r = a % b;
        a = b;
        b = r;
    }
    return a;
}

int main() {
    int a, b;
    cout << "Ingrese el primer numero: ";
    cin >> a;
    cout << "Ingrese el segundo numero: ";
    cin >> b;

    cout << "El MCD de " << a << " y " << b << " es: " << mcd(a, b) << endl;
    return 0;
}
