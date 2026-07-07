#include <iostream>
using namespace std;

int puntosCalidad(float promedio) {
    if (promedio >= 90 && promedio <= 100)
        return 4;
    else if (promedio >= 80 && promedio <= 89)
        return 3;
    else if (promedio >= 70 && promedio <= 79)
        return 2;
    else if (promedio >= 60 && promedio <= 69)
        return 1;
    else
        return 0;
}

int main() {
    float promedio;
    cout << "Ingrese el promedio del estudiante: ";
    cin >> promedio;

    cout << "Puntos de calidad: " << puntosCalidad(promedio) << endl;
    return 0;
}
