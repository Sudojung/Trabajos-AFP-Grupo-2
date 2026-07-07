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

    int suma = 0;
    for (int i = 0; i < n; i++) {
        suma = suma + v[i];
    }

    cout << "La suma de los elementos es: " << suma << endl;
    return 0;
}
