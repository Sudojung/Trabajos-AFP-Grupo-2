#include <iostream>
using namespace std;
int main() {
    long long suma = 0;       
    long double producto = 1;   
    for (int i = 20; i <= 400; i += 2) {
        suma += i;        
        producto *= i;    
    }

    cout << "La suma de números pares entre 20 y 400 es: " << suma << endl;
    cout << "El producto de números pares entre 20 y 400 es: " << producto << endl;

    return 0;
}
