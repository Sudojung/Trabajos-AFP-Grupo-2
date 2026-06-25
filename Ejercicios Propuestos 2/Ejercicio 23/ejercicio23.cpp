#include <iostream>
#include <cmath> 
#include <iomanip> 
using namespace std;


double seno(double x, int n) {
    double suma = x;
    double termino = x;
    int signo = -1;
    
    // overflow para evitar la memoria con los factoriales
    for (int i = 1; i < n; i++) {
        termino = termino * (x * x) / ((2 * i) * (2 * i + 1));
        suma = suma + (signo * termino);
        signo = signo * -1; // Alterna entre resta y suma
    }
    
    return suma;
}


int main() {
    int n = 10; // Segun la nota que nos puso, usar 10 terminos
    const double PI = 3.141592653589793;
    double angulo = 0.0;
    double paso = PI / 8.0;
    double limite = 2.0 * PI;
    
    // Formato de impresion para la tabla
    cout << "---------------------------------" << endl;
    cout << left << setw(15) << "Angulo (rad)" << "| Tangente" << endl;
    cout << "---------------------------------" << endl;
    
    
    while (angulo <= limite + 0.0001) {
        
        double sen_x = seno(angulo, n);
        
        // Nota 1: Calculamos coseno despejando la formula cos^2 + sen^2 = 1 -> cos = raiz(1 - sen^2)
        // Usamos abs() adentro por que no pueden realizar o definir un decimal con ceros perfectos
        double cos_x = sqrt(abs(1.0 - (sen_x * sen_x)));
        
        // IMPORTANTE PARA PRESENTACIO SI DICE EL PROFE: El signo del coseno
        // Al sacar la raiz cuadrada, perdemos el signo real del coseno. 
        // Si el angulo esta entre 90 y 270 grados (pi/2 y 3pi/2), el coseno debe ser negativo.
        if (angulo > (PI / 2.0) && angulo < (3.0 * PI / 2.0)) {
            cos_x = -cos_x;
        }
        
        // Nota 2: Verificacion de si el coseno es cero.        
        if (abs(cos_x) < 0.00001) {
            cout << left << setw(15) << angulo << "| infinito" << endl;
        } else {
            double tan_x = sen_x / cos_x;
            cout << left << setw(15) << angulo << "| " << tan_x << endl;
        }
        
        // Avanzamos al siguiente angulo sumando pi/8
        angulo = angulo + paso;
    }
    
    cout << "---------------------------------" << endl;

    return 0;
}