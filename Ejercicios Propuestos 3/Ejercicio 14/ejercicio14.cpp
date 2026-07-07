#include <iostream>
using namespace std;

void ordenarVector(int v[], int n) {
    for (int i = 0; i < n - 1; i++) {
        for (int j = 0; j < n - 1 - i; j++) {
            if (v[j] > v[j + 1]) {
                int temp = v[j];
                v[j] = v[j + 1];
                v[j + 1] = temp;
            }
        }
    }
}

void imprimirVector(int v[], int n) {
    for (int i = 0; i < n; i++) {
        cout << v[i] << " ";
    }
    cout << endl;
}

int main() {
    int n;
    cout << "Ingrese la cantidad de elementos: ";
    cin >> n;

    int v[100];
    for (int i = 0; i < n; i++) {
        cout << "Elemento " << i << ": ";
        cin >> v[i];
    }

    ordenarVector(v, n);
    cout << "Vector ordenado: ";
    imprimirVector(v, n);

    return 0;
}
