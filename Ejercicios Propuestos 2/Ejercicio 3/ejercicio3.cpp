#include <iostream>

using namespace std;

int main() {
    // Definir n, i, suma Como Entero
    int n, i;

    long long suma; 
    
    // Validación de entrada
    do {
        cout << "Ingrese un número natural (mayor que 0):" << endl;
        cin >> n;
        
        if (n <= 0) {
            cout << "Error: debe ingresar un número natural positivo." << endl;
        }
    } while (n <= 0); // "Hasta Que n > 0" se traduce como "mientras n sea menor o igual a 0"
    
    suma = 0;
    
    // Para i <- 1 Hasta n Con Paso 1 Hacer
    for (i = 1; i <= n; i++) {
        suma = suma + (i * i);
    }
    
    cout << "La suma de los cuadrados de los " << n << " primeros números naturales es: " << suma << endl;
    
    return 0;
}