#include <iostream>

using namespace std;

int main() {
    int anio;
    int total_leidos = 0;
    int bisiestos_encontrados = 0;

    while (total_leidos < 10 && bisiestos_encontrados < 3) {
        cout << "Ingrese un año: ";
        cin >> anio;

        total_leidos++;

        if ((anio % 4 == 0 && anio % 100 != 0) || (anio % 400 == 0)) {
            cout << anio << " es un año BISIESTO." << endl;
            bisiestos_encontrados++;
        } else {
            cout << anio << " NO es un año bisiesto." << endl;
        }
        cout << "--- continuemos ----" << endl;
    }

    cout << "--- Proceso terminado ---" << endl;
    cout << "Total de años revisados: " << total_leidos << endl;
    cout << "Total de bisiestos encontrados: " << bisiestos_encontrados << endl;

    return 0;
}
