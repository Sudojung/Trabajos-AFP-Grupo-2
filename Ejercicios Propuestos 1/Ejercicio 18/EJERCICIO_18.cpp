#include <iostream>
#include <cmath>
#include <iomanip>

using namespace std;

int main() {
    int limite_P, numero_actual, cuadrado, cubo;
    double raiz_cuadrada;
    
    cout << "Ingrese la cantidad de numeros a calcular (Valor de P): ";
    cin >> limite_P;
    
    if (limite_P > 0) {
        cout << "Num | Cuadrado | Cubo | Raiz Cuadrada" << endl;
        cout << "---------------------------------------" << endl;
        for (numero_actual = 1; numero_actual <= limite_P; numero_actual++) {
            cuadrado = numero_actual * numero_actual;
            cubo = numero_actual * numero_actual * numero_actual;
            raiz_cuadrada = sqrt(numero_actual);
            
            cout << numero_actual << "   | " << cuadrado << "    \t| " << cubo << "	| " << fixed << setprecision(4) << raiz_cuadrada << endl;
        }
    } else {
        cout << "Error: La cantidad P debe ser un numero mayor a cero." << endl;
    }
    
    return 0;
}
