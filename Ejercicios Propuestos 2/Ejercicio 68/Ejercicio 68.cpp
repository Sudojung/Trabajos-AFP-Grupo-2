#include <iostream>

using namespace std;

int main() {
    int n, i;
    double e, fact;
    
    cout << "Introduce el número de términos (n) para aproximar e:" << endl;
    cin >> n;
    
    // Variables
    e = 1.0;        // El primer término (1/ 0! = 1)
    fact = 1.0;     // Guarda el valor del factorial acumulado 
    
    for (i = 1; i <= n - 1; i++) {
        fact = fact * i;
        
        e = e + (1.0 / fact);
    }
    
    cout << "El valor aproximado de e con " << n << " términos es: " << e << endl;
    
    return 0;
}
