#include <iostream>
#include <cmath>

using namespace std;

int main() {
    int i;
    double N, cuadrado, potencia_raiz;
    
    cout << "   N    |   N^2    |  N^0.5  " << endl;
    cout << "-----------------------------" << endl;
    
    for (i = 0; i <= 100; i++) {
        N = 1.0 + (i * 0.001);
        cuadrado = N * N;
        potencia_raiz = pow(N, 0.5);
        
        cout << N << "  |  " << cuadrado << "  |  " << potencia_raiz << endl;
    }
    
    return 0;
}
