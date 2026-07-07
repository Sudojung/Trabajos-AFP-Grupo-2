#include <iostream>
using namespace std;

int main() {
    int n;
    cout << "Ingrese el tamano de la matriz: ";
    cin >> n;

    int A[50][50];
    for (int i = 0; i < n; i++)
        for (int j = 0; j < n; j++)
            cin >> A[i][j];

    bool esSimetrica = true;
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < n; j++) {
            if (A[i][j] != A[j][i]) {
                esSimetrica = false;
            }
        }
    }

    if (esSimetrica)
        cout << "La matriz es simetrica." << endl;
    else
        cout << "La matriz NO es simetrica." << endl;

    return 0;
}
