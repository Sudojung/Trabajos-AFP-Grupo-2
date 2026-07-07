#include <iostream>
using namespace std;

int main() {
    int n;
    cout << "Ingrese el tamano de la matriz: ";
    cin >> n;

    int m[50][50];
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < n; j++) {
            if (i == j)
                m[i][j] = 1;
            else
                m[i][j] = 0;
        }
    }

    cout << "Matriz identidad:" << endl;
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < n; j++) {
            cout << m[i][j] << " ";
        }
        cout << endl;
    }
    return 0;
}
