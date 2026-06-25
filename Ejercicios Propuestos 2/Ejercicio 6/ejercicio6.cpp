#include <iostream>

using namespace std;

int main() {
    int dia1, mes1, anio1;
    int dia2, mes2, anio2;
    
    cout << "Ingrese el DÍA de la primera fecha (Escriba 0 para salir):" << endl;
    cin >> dia1;
    
    // El ciclo se repite mientras el día 1 no sea cero
    while (dia1 != 0) {
        // Como el día no es 0, terminamos de pedir la primera fecha
        cout << "Ingrese el MES de la primera fecha:" << endl;
        cin >> mes1;
        cout << "Ingrese el AÑO de la primera fecha:" << endl;
        cin >> anio1;
        
        // Pedimos la segunda fecha completa
        cout << "--- Segunda Fecha ---" << endl;
        cout << "Ingrese el DÍA de la segunda fecha:" << endl;
        cin >> dia2;
        cout << "Ingrese el MES de la segunda fecha:" << endl;
        cin >> mes2;
        cout << "Ingrese el AÑO de la segunda fecha:" << endl;
        cin >> anio2;
        
        cout << "--------------------------------------------------" << endl;
        
        // Comparación de mayor a menor
        if (anio1 < anio2) {
            cout << "-> La primera fecha (" << dia1 << "/" << mes1 << "/" << anio1 << ") es anterior." << endl;
        } else {
            if (anio1 > anio2) {
                cout << "-> La segunda fecha (" << dia2 << "/" << mes2 << "/" << anio2 << ") es anterior." << endl;
            } else {
                // Si los años son iguales. Comparamos los meses:
                if (mes1 < mes2) {
                    cout << "-> La primera fecha es anterior." << endl;
                } else {
                    if (mes1 > mes2) {
                        cout << "-> La segunda fecha es anterior." << endl;
                    } else {
                        // Si los años y meses son iguales. Comparamos los días:
                        if (dia1 < dia2) {
                            cout << "-> La primera fecha es anterior." << endl;
                        } else {
                            if (dia1 > dia2) {
                                cout << "-> La segunda fecha es anterior." << endl;
                            } else {
                                cout << "-> Ambas fechas son exactamente iguales." << endl;
                            }
                        }
                    }
                }
            }
        }
        
        cout << "--------------------------------------------------" << endl;
        // se pide sino se vuelve a hacer
        cout << "Ingrese el DÍA de la siguiente primera fecha (Escriba 0 para salir):" << endl;
        cin >> dia1;
    }
    
    cout << "Programa finalizado exitosamente." << endl;
    
    return 0;
}