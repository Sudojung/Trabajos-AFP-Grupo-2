#include <iostream>
#include <ctime>
using namespace std;

void bubbleSort(int v[], int n) {
    for (int i = 0; i < n - 1; i++) {
        for (int j = 0; j < n - 1 - i; j++) {
            if (v[j] > v[j + 1]) {
                int temp = v[j];
                v[j] = v[j + 1];
                v[j + 1] = temp;
            }
        }
    }
}

void combinar(int v[], int inicio, int medio, int fin) {
    int n1 = medio - inicio + 1;
    int n2 = fin - medio;
    int izq[1000], der[1000];

    for (int i = 0; i < n1; i++) izq[i] = v[inicio + i];
    for (int j = 0; j < n2; j++) der[j] = v[medio + 1 + j];

    int i = 0, j = 0, k = inicio;
    while (i < n1 && j < n2) {
        if (izq[i] <= der[j]) v[k++] = izq[i++];
        else v[k++] = der[j++];
    }
    while (i < n1) v[k++] = izq[i++];
    while (j < n2) v[k++] = der[j++];
}

void mergeSort(int v[], int inicio, int fin) {
    if (inicio < fin) {
        int medio = (inicio + fin) / 2;
        mergeSort(v, inicio, medio);
        mergeSort(v, medio + 1, fin);
        combinar(v, inicio, medio, fin);
    }
}

int main() {
    int n;
    cout << "Ingrese la cantidad de elementos: ";
    cin >> n;

    int original[1000];
    for (int i = 0; i < n; i++) {
        cout << "Elemento " << i << ": ";
        cin >> original[i];
    }

    int copiaBurbuja[1000], copiaMerge[1000];
    for (int i = 0; i < n; i++) {
        copiaBurbuja[i] = original[i];
        copiaMerge[i] = original[i];
    }

    clock_t inicioB = clock();
    bubbleSort(copiaBurbuja, n);
    clock_t finB = clock();

    clock_t inicioM = clock();
    mergeSort(copiaMerge, 0, n - 1);
    clock_t finM = clock();

    cout << "Bubble Sort ordenado: ";
    for (int i = 0; i < n; i++) cout << copiaBurbuja[i] << " ";
    cout << endl;

    cout << "Merge Sort ordenado: ";
    for (int i = 0; i < n; i++) cout << copiaMerge[i] << " ";
    cout << endl;

    double tiempoB = double(finB - inicioB) / CLOCKS_PER_SEC;
    double tiempoM = double(finM - inicioM) / CLOCKS_PER_SEC;

    cout << "Tiempo Bubble Sort: " << tiempoB << " segundos" << endl;
    cout << "Tiempo Merge Sort: " << tiempoM << " segundos" << endl;

    return 0;
}
