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

    int pares[100], impares[100];
    int cp = 0, ci = 0;

    for (int i = 0; i < n; i++) {
        if (v[i] % 2 == 0) {
            pares[cp++] = v[i];
        } else {
            impares[ci++] = v[i];
        }
    }

    // Ordenar pares ascendente
    for (int i = 0; i < cp - 1; i++) {
        for (int j = 0; j < cp - 1 - i; j++) {
            if (pares[j] > pares[j + 1]) {
                int temp = pares[j];
                pares[j] = pares[j + 1];
                pares[j + 1] = temp;
            }
        }
    }

    // Ordenar impares descendente
    for (int i = 0; i < ci - 1; i++) {
        for (int j = 0; j < ci - 1 - i; j++) {
            if (impares[j] < impares[j + 1]) {
                int temp = impares[j];
                impares[j] = impares[j + 1];
                impares[j + 1] = temp;
            }
        }
    }

    cout << "Resultado: ";
    for (int i = 0; i < cp; i++) cout << pares[i] << " ";
    for (int i = 0; i < ci; i++) cout << impares[i] << " ";
    cout << endl;

    return 0;
}
