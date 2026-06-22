#include <iostream>

using namespace std;

int main() {
    int num;

    cout << "Introduce un número para ver su tabla:" << endl;
    cin >> num;

    cout << "La tabla de multiplicar del " << num << " es:" << endl;
    cout << "--------------------------------------------" << endl;

    for (int i = 1; i <= 10; i++) {
        cout << num << " x " << i << " = " << num * i << endl;
    }

    return 0;
}
