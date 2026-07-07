#include <iostream>
using namespace std;

void intercambiar(int &a, int &b) {
    int temp = a;
    a = b;
    b = temp;
}

int main() {
    int x, y;
    cout << "Ingrese el primer valor: ";
    cin >> x;
    cout << "Ingrese el segundo valor: ";
    cin >> y;

    cout << "Antes: x=" << x << ", y=" << y << endl;
    intercambiar(x, y);
    cout << "Despues: x=" << x << ", y=" << y << endl;

    return 0;
}
