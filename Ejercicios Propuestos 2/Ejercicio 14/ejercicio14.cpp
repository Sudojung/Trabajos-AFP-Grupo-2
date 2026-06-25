#include <iostream>

using namespace std;

int main() {
    int limite, i;    
    long long sumaCuadrados; 
    
    sumaCuadrados = 0;
    
    // Aquí validamos que el límite que ingresemos sea un número correcto
    do {
        cout << "Ingrese hasta qué número natural desea sumar sus cuadrados:" << endl;
        cin >> limite;
        
        // Si ingresamos 0 o un número negativo, activamos nuestro mensaje de error
        if (limite < 1) {
            cout << "¡Error! El número debe ser un entero positivo mayor o igual a 1." << endl;
            cout << "Por favor, intente de nuevo." << endl;
            cout << "--------------------------------------------------" << endl;
        }
    } while (limite < 1);
        
    for (i = 1; i <= limite; i++) {
        sumaCuadrados = sumaCuadrados + (i * i);
    }
    
    // Mostramos nuestro resultado final 
    cout << "La suma de los cuadrados de los primeros " << limite << " números es: " << sumaCuadrados << endl;

    return 0;
}