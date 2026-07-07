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

    for (int i = 1; i < n; i++) {
        int clave = v[i];
        int j = i - 1;
        while (j >= 0 && v[j] > clave) {
            v[j + 1] = v[j];
            j = j - 1;
        }
        v[j + 1] = clave;
    }

    cout << "Vector ordenado: ";
    for (int i = 0; i < n; i++) {
        cout << v[i] << " ";
    }
    cout << endl;
    return 0;
}
