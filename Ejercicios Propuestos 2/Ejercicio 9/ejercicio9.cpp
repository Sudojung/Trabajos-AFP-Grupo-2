#include <iostream>

using namespace std;

int main() {
    // Definimos las variables que utilizaremos para nuestras tablas    
    int inicio, fin, tope, i, j, resultado;    
   
    cout << "¿Desde qué tabla desea iniciar?" << endl;
    cin >> inicio;
    
    cout << "¿Hasta qué tabla desea llegar?" << endl;
    cin >> fin; 
    
    // límite para la multiplicación
    cout << "¿Hasta qué número desea multiplicar en cada tabla?" << endl;
    cin >> tope;
    
    cout << "--------------------------------------------------" << endl;
    
    // generar y mostrar nuestras tablas
    for (i = inicio; i <= fin; i++) {
        cout << "=========================" << endl;
        cout << "      TABLA DEL " << i << endl;
        cout << "========================" << endl;
        
        // Realizamos el proceso de las multiplicaciones iterando hasta el tope
        for (j = 1; j <= tope; j++) {
            resultado = i * j;
            cout << i << " x " << j << " = " << resultado << endl;
        }
        
        cout << endl; 
    }
    
    return 0;
}