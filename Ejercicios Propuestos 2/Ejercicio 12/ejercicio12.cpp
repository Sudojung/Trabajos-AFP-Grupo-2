#include <iostream>

using namespace std;

int main() {
    int numCif, d1, d2, d3, d4, temp;
    
    cout << "Ingrese el número cifrado (entero de 4 dígitos):" << endl;
    cin >> numCif;
    
    // Aquí extraemos cada uno de los dígitos de nuestro número cifrado
    d1 = numCif / 1000;
    d2 = (numCif % 1000) / 100;
    d3 = (numCif % 100) / 10;
    d4 = numCif % 10;
    
    // Revertimos los intercambios de posición que hicimos previamente
    temp = d1;
    d1 = d3;
    d3 = temp;
    
    temp = d2;
    d2 = d4;
    d4 = temp;
    
    // Deshacemos la operación original sumando 3 a cada dígito
    d1 = (d1 + 3) % 10;
    d2 = (d2 + 3) % 10;
    d3 = (d3 + 3) % 10;
    d4 = (d4 + 3) % 10;
    
    cout << "El dato original revelado es: " << d1 << d2 << d3 << d4 << endl;
    
    return 0;
}