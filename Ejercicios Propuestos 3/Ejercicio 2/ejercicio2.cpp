#include <iostream>
using namespace std;

int main() {
    int n;
    cout << "Ingrese la cantidad de notas: ";
    cin >> n;

    float nota[100];
    float suma = 0;
    for (int i = 0; i < n; i++) {
        cout << "Nota " << i << ": ";
        cin >> nota[i];
        suma = suma + nota[i];
    }

    float promedio = suma / n;
    cout << "El promedio es: " << promedio << endl;
    return 0;
}
