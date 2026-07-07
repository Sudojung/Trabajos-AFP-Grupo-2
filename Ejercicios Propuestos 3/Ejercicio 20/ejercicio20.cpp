#include <iostream>
#include <fstream>
using namespace std;

struct Estudiante {
    string nombre;
    float nota1, nota2, nota3;
    float promedio;
};

void leerGrupo(string archivoEntrada, Estudiante grupo[], int &cantidad) {
    ifstream archivo(archivoEntrada);
    cantidad = 0;
    while (archivo >> grupo[cantidad].nombre >> grupo[cantidad].nota1
                   >> grupo[cantidad].nota2 >> grupo[cantidad].nota3) {
        grupo[cantidad].promedio = (grupo[cantidad].nota1 + grupo[cantidad].nota2
                                     + grupo[cantidad].nota3) / 3;
        cantidad++;
    }
    archivo.close();
}

void ordenarPorPromedio(Estudiante grupo[], int cantidad) {
    for (int i = 0; i < cantidad - 1; i++) {
        for (int j = 0; j < cantidad - 1 - i; j++) {
            if (grupo[j].promedio < grupo[j + 1].promedio) {
                Estudiante temp = grupo[j];
                grupo[j] = grupo[j + 1];
                grupo[j + 1] = temp;
            }
        }
    }
}

void escribirGrupo(string archivoSalida, Estudiante grupo[], int cantidad) {
    ofstream archivo(archivoSalida);
    for (int i = 0; i < cantidad; i++) {
        archivo << grupo[i].nombre << " " << grupo[i].promedio << endl;
    }
    archivo.close();
}

int main() {
    Estudiante grupoA[100], grupoB[100];
    int cantA = 0, cantB = 0;

    leerGrupo("grupoA.txt", grupoA, cantA);
    leerGrupo("grupoB.txt", grupoB, cantB);

    ordenarPorPromedio(grupoA, cantA);
    ordenarPorPromedio(grupoB, cantB);

    escribirGrupo("grupoA_ordenado.txt", grupoA, cantA);
    escribirGrupo("grupoB_ordenado.txt", grupoB, cantB);

    int tercioA = cantA / 3;
    int tercioB = cantB / 3;

    ofstream tercioSuperior("tercioSuperior.txt");
    for (int i = 0; i < tercioA; i++) {
        tercioSuperior << grupoA[i].nombre << " " << grupoA[i].promedio << " (Grupo A)" << endl;
    }
    for (int i = 0; i < tercioB; i++) {
        tercioSuperior << grupoB[i].nombre << " " << grupoB[i].promedio << " (Grupo B)" << endl;
    }
    tercioSuperior.close();

    cout << "Archivos generados: grupoA_ordenado.txt, grupoB_ordenado.txt y tercioSuperior.txt" << endl;
    return 0;
}
