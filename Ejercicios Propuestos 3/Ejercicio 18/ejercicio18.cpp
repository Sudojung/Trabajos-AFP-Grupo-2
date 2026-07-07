#include <iostream>
using namespace std;

int main() {
    int n, m;
    cout << "Ingrese numero de filas: ";
    cin >> n;
    cout << "Ingrese numero de columnas: ";
    cin >> m;

    // Reservar memoria para n filas
    int** M = new int*[n];
    for (int i = 0; i < n; i++) {
        M[i] = new int[m];
    }

    // Llenar la matriz
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < m; j++) {
            cout << "M[" << i << "][" << j << "]: ";
            cin >> M[i][j];
        }
    }

    // Mostrar la matriz
    cout << "Matriz ingresada:" << endl;
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < m; j++) {
            cout << M[i][j] << " ";
        }
        cout << endl;
    }

    // Liberar memoria
    for (int i = 0; i < n; i++) {
        delete[] M[i];
    }
    delete[] M;

    return 0;
}
