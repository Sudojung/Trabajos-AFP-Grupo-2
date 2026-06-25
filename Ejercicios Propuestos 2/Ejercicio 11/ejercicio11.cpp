#include <iostream>
#include <cmath>

using namespace std;

int main() {
    int cant, i, dentro;
    double a, b, distC1, distC2;
    
    cout << "¿Cuántos puntos desea evaluar?" << endl;
    cin >> cant;
    
    dentro = 0; 
    
    for (i = 1; i <= cant; i++) {
        cout << "--- Punto " << i << " ---" << endl;
        cout << "Ingrese coordenada X:" << endl;
        cin >> a;
        cout << "Ingrese coordenada Y:" << endl;
        cin >> b;
        
        // Calculamos la distancia de nuestro punto hacia los centros de ambas circunferencias
        distC1 = pow(a - 5, 2) + pow(b - 4, 2);
        distC2 = pow(a + 5, 2) + pow(b - 4, 2);
        
        // Evaluamos si el punto que ingresamos está dentro de la primera o de la segunda área
        if (distC1 <= 4 || distC2 <= 9) {
            cout << "  -> ¡El punto está dentro!" << endl;
            dentro = dentro + 1;
        } else {
            cout << "  -> El punto está fuera." << endl;
        }
    }
    
    cout << "--------------------------------------------------" << endl;
    cout << "Total de puntos dentro de las circunferencias: " << dentro << endl;
    
    return 0;
}