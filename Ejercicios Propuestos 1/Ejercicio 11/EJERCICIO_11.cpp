#include <iostream>

using namespace std;

int main() {
    int totalPersonas, totalAceptanA, totalAceptanB;
    int aceptanAmbos, aceptanSoloA, aceptanSoloB, noAceptanNinguno;
    int respuestaA, respuestaB;

    totalAceptanA = 0;
    totalAceptanB = 0;
    aceptanAmbos = 0;
    aceptanSoloA = 0;
    aceptanSoloB = 0;
    noAceptanNinguno = 0;

    cout << "Ingrese la cantidad total de personas a encuestar: ";
    cin >> totalPersonas;

    for (int i = 1; i <= totalPersonas; i++) {
        cout << "--- Encuesta N° " << i << " ---" << endl;
        cout << "¿Acepta el producto A? (1=Sí, 0=No): ";
        cin >> respuestaA;
        cout << "¿Acepta el producto B? (1=Sí, 0=No): ";
        cin >> respuestaB;

        if (respuestaA == 1) {
            totalAceptanA++;
        }
        if (respuestaB == 1) {
            totalAceptanB++;
        }

        if (respuestaA == 1 && respuestaB == 1) {
            aceptanAmbos++;
        }
        if (respuestaA == 1 && respuestaB == 0) {
            aceptanSoloA++;
        }
        if (respuestaA == 0 && respuestaB == 1) {
            aceptanSoloB++;
        }
        if (respuestaA == 0 && respuestaB == 0) {
            noAceptanNinguno++;
        }
    }

    if (totalPersonas > 0) {
        cout << "=========================================" << endl;
        cout << "Total de personas encuestadas: " << totalPersonas << endl;
        cout << "% Aceptan A: " << (static_cast<double>(totalAceptanA) / totalPersonas) * 100 << "%" << endl;
        cout << "% Aceptan B: " << (static_cast<double>(totalAceptanB) / totalPersonas) * 100 << "%" << endl;
        cout << "% Aceptan Ambos: " << (static_cast<double>(aceptanAmbos) / totalPersonas) * 100 << "%" << endl;
        cout << "% Aceptan Solo A: " << (static_cast<double>(aceptanSoloA) / totalPersonas) * 100 << "%" << endl;
        cout << "% Aceptan Solo B: " << (static_cast<double>(aceptanSoloB) / totalPersonas) * 100 << "%" << endl;
        cout << "% No aceptan ninguno: " << (static_cast<double>(noAceptanNinguno) / totalPersonas) * 100 << "%" << endl;
        cout << "=========================================" << endl;
    } else {
        cout << "No se registraron encuestas." << endl;
    }

    return 0;
}
