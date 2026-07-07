#include <iostream>
using namespace std;

int particion(int v[], int inicio, int fin) {
    int pivote = v[fin];
    int i = inicio - 1;

    for (int j = inicio; j < fin; j++) {
        if (v[j] <= pivote) {
            i++;
            int temp = v[i];
            v[i] = v[j];
            v[j] = temp;
        }
    }
    int temp = v[i + 1];
    v[i + 1] = v[fin];
    v[fin] = temp;

    return i + 1;
}

void quickSort(int v[], int inicio, int fin) {
    if (inicio < fin) {
        int p = particion(v, inicio, fin);
        quickSort(v, inicio, p - 1);
        quickSort(v, p + 1, fin);
    }
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

    quickSort(v, 0, n - 1);

    cout << "Vector ordenado: ";
    for (int i = 0; i < n; i++) {
        cout << v[i] << " ";
    }
    cout << endl;

    return 0;
}
