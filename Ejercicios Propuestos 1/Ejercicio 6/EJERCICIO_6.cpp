#include <iostream>
#include <cmath>

using namespace std;

int main() {
    double angulo, seno_acumulado, termino, signo, factorial;
    int exponente;

    cout << "Ingrese el ángulo en radianes (entre -3.1416 y 3.1416):" << endl;
    cin >> angulo;

    if (angulo < -3.1416 || angulo > 3.1416) {
        cout << "Error: Ángulo fuera del rango permitido." << endl;
    } else {
        seno_acumulado = angulo;
        termino = angulo;
        signo = 1;
        factorial = 1;

        for (int i = 1; i <= 4; i++) {
            signo = signo * (-1);
            exponente = 2 * i + 1;

            factorial = factorial * (2 * i) * (2 * i + 1);
            termino = pow(angulo, exponente) / factorial;
            seno_acumulado = seno_acumulado + (signo * termino);
        }

        cout << "Seno aproximado de (" << angulo << ") = " << seno_acumulado << endl;
    }

    return 0;
}
