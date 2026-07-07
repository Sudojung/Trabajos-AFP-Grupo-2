#include <iostream>
#include <fstream>
using namespace std;

int main() {
    ifstream archivo("estudiantes.txt");
    if (!archivo) {
        cout << "No se pudo abrir el archivo estudiantes.txt" << endl;
        return 1;
    }

    string nombre;
    float nota;
    float suma = 0;
    int cont = 0;

    while (archivo >> nombre >> nota) {
        suma = suma + nota;
        cont++;
    }

    archivo.close();

    if (cont > 0) {
        float promedioGeneral = suma / cont;
        cout << "Promedio general: " << promedioGeneral << endl;
    } else {
        cout << "El archivo esta vacio." << endl;
    }

    return 0;
}
