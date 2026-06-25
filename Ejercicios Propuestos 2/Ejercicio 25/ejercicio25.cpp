#include <iostream>
#include <cmath>
using namespace std;

int main() {
    int M;
    cout << "Ingresamos la cantidad de numeros (M): ";
    cin >> M;

    if (M <= 0) {
        cout << "La cantidad debe ser mayor a 0." << endl;
        return 1;
    }

    double suma_inversas = 0;
    double producto = 1;
    int x;

    for (int i = 0; i < M; i++) {
        cout << "Ingresamos el numero entero positivo " << i + 1 << ": ";
        cin >> x;

        // Caso a tomar en cuenta: Validación estricta de positivos.
        // Un 0 nos fregaria el codigo
        if (x <= 0) {
            cout << "Error: Las medias armonica y geometrica requieren numeros > 0." << endl;
            return 1; // Terminamos la ejecución por error de ingreso
        }

        suma_inversas += 1.0 / x;
        producto *= x;
    }

    // Formulas aqui uwu
    double media_armonica = M / suma_inversas;
    double media_geometrica = pow(producto, 1.0 / M);

    cout << "Media Armonica: " << media_armonica << endl;
    cout << "Media Geometrica: " << media_geometrica << endl;
    // Usamos abs() para garantizar que la diferencia sea siempre positiva
    cout << "Diferencia: " << abs(media_armonica - media_geometrica) << endl;

    return 0;
}