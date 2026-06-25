#include <iostream>

using namespace std;

int main() {
    int n, i;
 
    long long factorial; 
    
    //validamos que ingresemos un número natural
    do {
        cout << "Introduzca un entero positivo: " << endl;
        cin >> n;
        
        if (n < 1) {
            cout << "¡Error! Debe ingresar un número natural." << endl;
        }
    } while (n < 1);
    
    factorial = 1;
    i = 1;
    
    // Calculamos nuestro factorial iterando hasta llegar a 'n'
    while (i <= n) {
        factorial = factorial * i;
        i = i + 1;
    }
    
    cout << "El factorial de " << n << " es: " << factorial << endl;
    
    return 0;
}