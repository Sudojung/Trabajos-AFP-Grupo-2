#include <iostream>

using namespace std;

int main() {
    double A, B, C, D;
    double maxInicio, minFin;
    
    // Validamos nuestro primer intervalo para asegurarnos de que el inicio no sea mayor al fin
    do {
        cout << "Primer Intervalo [a, b] " << endl;
        cout << "Ingrese el valor de inicio (a):" << endl;
        cin >> A;
        cout << "Ingrese el valor de fin (b):" << endl;
        cin >> B;
        
        if (A > B) {
            cout << "¡Error! El inicio A no puede ser mayor que el fin B." << endl;
            cout << "--------------------------------------------------" << endl;
        }
    } while (A > B);
    
    // Validamos nuestro segundo intervalo siguiendo la misma lógica
    do {
        cout << "Segundo Intervalo [c, d] " << endl;
        cout << "Ingrese el valor de inicio (c):" << endl;
        cin >> C;
        cout << "Ingrese el valor de fin (d):" << endl;
        cin >> D;
        
        if (C > D) {
            cout << "¡Error! El inicio C no puede ser mayor que el fin D." << endl;
            cout << "--------------------------------------------------" << endl;
        }
    } while (C > D);
    
    // Encontramos el inicio de nuestra intersección evaluando el máximo entre A y C
    if (A > C) {
        maxInicio = A;
    } else {
        maxInicio = C;
    }
    
    // Encontramos el fin de nuestra intersección evaluando el mínimo entre B y D
    if (B < D) {
        minFin = B;
    } else {
        minFin = D;
    }
    
    cout << "--------------------------------------------------" << endl;
    // Evaluamos si nuestros intervalos realmente chocan o si están completamente separados
    if (maxInicio <= minFin) {
        cout << "La intersección de los intervalos es: [" << maxInicio << " , " << minFin << "]" << endl;
    } else {
        cout << "Los intervalos no se cruzan." << endl;
    }
    cout << "--------------------------------------------------" << endl;
    
    return 0;
}