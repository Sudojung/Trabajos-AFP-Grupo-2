#include <iostream>

using namespace std;

int main() {
    int primero, segundo;

    cout << "Ingrese el primer número:" << endl;
    cin >> primero;

    cout << "Ingrese el segundo número:" << endl;
    cin >> segundo;

    // Calculamos nuestro MCD restando el menor al mayor hasta que ambos números sean iguales
    while (primero != segundo) {
        
        if (primero > segundo) {
            primero = primero - segundo;
        } else {
            segundo = segundo - primero;
        }
        
    }

    // Mostramos nuestro resultado final
    cout << "El máximo común divisor es: " << primero << endl;

    return 0;
}