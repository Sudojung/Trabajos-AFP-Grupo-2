#include <iostream>
#include <cstring>
using namespace std;

int main() {
    char cad[100];
    cout << "Ingrese una cadena: ";
    cin >> cad;

    int L = strlen(cad);
    for (int i = 0; i < L - 1; i++) {
        for (int j = 0; j < L - 1 - i; j++) {
            if (cad[j] > cad[j + 1]) {
                char temp = cad[j];
                cad[j] = cad[j + 1];
                cad[j + 1] = temp;
            }
        }
    }

    cout << "Cadena ordenada: " << cad << endl;
    return 0;
}
