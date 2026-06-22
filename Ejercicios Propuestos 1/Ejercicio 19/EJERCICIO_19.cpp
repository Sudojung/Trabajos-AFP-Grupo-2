#include <iostream>

using namespace std;

int main() {
    int cantidad_euros, resto_euros;
    int billetes_20, billetes_10, billetes_5, billetes_1;
    
    cout << "Ingrese la cantidad entera de euros a retirar: ";
    cin >> cantidad_euros;
    
    if (cantidad_euros > 0) {
        billetes_20 = cantidad_euros / 20;
        resto_euros = cantidad_euros % 20;
        
        billetes_10 = resto_euros / 10;
        resto_euros = resto_euros % 10;
        
        billetes_5 = resto_euros / 5;
        resto_euros = resto_euros % 5;
        
        billetes_1 = resto_euros;
        
        cout << "--- DESGLOSE OPTIMO DE BILLETES ---" << endl;
        cout << "Billetes de 20 euros: " << billetes_20 << endl;
        cout << "Billetes de 10 euros: " << billetes_10 << endl;
        cout << "Billetes de 5 euros:  " << billetes_5 << endl;
        cout << "Billetes de 1 euro:   " << billetes_1 << endl;
    } else {
        cout << "Error: La cantidad ingresada debe ser mayor a cero." << endl;
    }
    
    return 0;
}
