#include <iostream>
#include <cstdlib>
#include <ctime>

using namespace std;

int main() {
    // Cambiamos "año" por "anio" mas que nada para la compilacion sea rapida
    int dia1, mes1, anio1;
    int dia2, mes2, anio2;
    int maxInt, intentos;
    
    // Configuramos la semilla (como en el maincra :v)
    srand(time(0));
    
    // Elegimos un número al azar entre 1 y 10
    maxInt = rand() % 10 + 1;
    intentos = 0;   
    
    cout << "¡El sistema ha asignado el límite de intentos!" << endl;
    cout << "Para esta programa tienes un máximo de: " << maxInt << " intentos." << endl;
    cout << "--------------------------------------------------" << endl;
    
    cout << "Ingrese el DÍA de la primera fecha (Escriba 0 para salir):" << endl;
    cin >> dia1;
    
    // Verificamos que el día no sea 0 y que no superemos los intentos permitidos
    while (dia1 != 0 && intentos < maxInt) {
        
        cout << "Ingrese el MES de la primera fecha:" << endl;
        cin >> mes1;
        cout << "Ingrese el AÑO de la primera fecha:" << endl;
        cin >> anio1;
        
        cout << "--- Segunda Fecha ---" << endl;
        cout << "Ingrese el DÍA de la segunda fecha:" << endl;
        cin >> dia2;
        cout << "Ingrese el MES de la segunda fecha:" << endl;
        cin >> mes2;
        cout << "Ingrese el AÑO de la segunda fecha:" << endl;
        cin >> anio2;
        
        cout << "--------------------------------------------------" << endl;
        
        // Comparamos los años, meses y días 
        if (anio1 < anio2) {
            cout << "-> La primera fecha (" << dia1 << "/" << mes1 << "/" << anio1 << ") es anterior." << endl;
        } else {
            if (anio1 > anio2) {
                cout << "-> La segunda fecha (" << dia2 << "/" << mes2 << "/" << anio2 << ") es anterior." << endl;
            } else {
                if (mes1 < mes2) {
                    cout << "-> La primera fecha es anterior." << endl;
                } else {
                    if (mes1 > mes2) {
                        cout << "-> La segunda fecha es anterior." << endl;
                    } else {
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
        
        intentos = intentos + 1;
        
        // Pedimos otra fecha solo si aún nos quedan intentos
        if (intentos < maxInt) {
            cout << "Ingrese el DÍA de la siguiente primera fecha (Escriba 0 para salir):" << endl;
            cin >> dia1;
        }
        
    }
    
    // Verificamos cómo terminó la ejecución de nuestro programa
    if (intentos >= maxInt) {
        cout << "Lo siento, se acabó sus intentos." << endl;
    } else {
        cout << "Programa finalizado exitosamente." << endl;
    }
    
    return 0;
}