#include <iostream>
using namespace std;

int main() {
    int n, m;
    cout << "Ingrese numero de filas: ";
    cin >> n;
    cout << "Ingrese numero de columnas: ";
    cin >> m;

    int A[50][50], T[50][50];
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < m; j++) {
            cout << "A[" << i << "][" << j << "]: ";
            cin >> A[i][j];
        }
    }

    for (int i = 0; i < n; i++) {
        for (int j = 0; j < m; j++) {
            T[j][i] = A[i][j];
        }
    }

    cout << "Matriz transpuesta:" << endl;
    for (int i = 0; i < m; i++) {
        for (int j = 0; j < n; j++) {
            cout << T[i][j] << " ";
        }
        cout << endl;
    }
    return 0;
}
