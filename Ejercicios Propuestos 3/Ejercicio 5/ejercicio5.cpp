#include <iostream>
using namespace std;

long long factorial(int n) {
    long long fact = 1;
    for (int i = 1; i <= n; i++) {
        fact = fact * i;
    }
    return fact;
}

int main() {
    int n;
    cout << "Ingrese un numero: ";
    cin >> n;

    cout << "El factorial de " << n << " es: " << factorial(n) << endl;
    return 0;
}
