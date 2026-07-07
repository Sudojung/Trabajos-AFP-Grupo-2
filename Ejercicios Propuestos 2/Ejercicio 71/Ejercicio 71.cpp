#include <iostream>
#include <cmath> // Necesario para calcular las potencias con pow()

using namespace std;

// Función equivalente al SubProceso CalcularFactorial
double CalcularFactorial(int numero) {
    double res = 1.0;
    
    if (numero > 0) {
        for (int i = 1; i <= numero; i++) {
            res = res * i;
        }
    }
    
    return res;
}

// Algoritmo principal
int main() {
    int N, K;
    double porcentaje_p, p, q, combinatoria, prob;
    double factN, factK, factNK;
    
    cout << "Ingrese N (número total de ensayos):" << endl;
    cin >> N;

    // Equivalente al bucle Repetir ... Hasta Que
    do {
        cout << "Ingrese la probabilidad de éxito, ejemplo:50 (en porcentaje 50=50%):" << endl;
        cin >> porcentaje_p;
        
        if (porcentaje_p <= 0 || porcentaje_p > 100) {
            cout << "¡ERROR! El porcentaje debe ser mayor a 0 y máximo 100. Intente de nuevo." << endl;
        }
    } while (!(porcentaje_p > 0 && porcentaje_p <= 100)); // En C++ el bucle 'do-while' repite MIENTRAS la condición sea verdadera.
    
    // Aquí el número de porcentaje se convierte en decimal, ejemplo 50% = 0.5 
    p = porcentaje_p / 100.0;
    q = 1.0 - p;
    
    cout << "____________________________________" << endl;
    cout << "K         |    Probabilidad P(K)" << endl;
    cout << "------------------------------------" << endl;
    
    for (K = 0; K <= N; K++) {
        
        factN = CalcularFactorial(N);
        factK = CalcularFactorial(K);
        factNK = CalcularFactorial(N - K);
        
        combinatoria = factN / (factK * factNK);
        
        // Se usa pow(base, exponente) para elevar un número en C++
        prob = combinatoria * pow(p, K) * pow(q, (N - K));
        
        cout << K << "       |   " << prob << endl;
        
    }
    
    return 0;
}

