#include <iostream>
using namespace std;

int main() {
    int n;
    cout << "Ingrese la cantidad de elementos: ";
    cin >> n;

    int v[100];
    for (int i = 0; i < n; i++) {
        cout << "Elemento " << i << ": ";
        cin >> v[i];
    }

    int mayor = v[0];
    int menor = v[0];
    for (int i = 1; i < n; i++) {
        if (v[i] > mayor) mayor = v[i];
        if (v[i] < menor) menor = v[i];
    }

    cout << "El mayor valor es: " << mayor << endl;
    cout << "El menor valor es: " << menor << endl;
    return 0;
}
