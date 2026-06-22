#include <iostream>
#include <string>

using namespace std;

int main() {
    int n;
    string romanos[21];

    romanos[1]  = "I";    romanos[2]  = "II";   romanos[3]  = "III";
    romanos[4]  = "IV";   romanos[5]  = "V";    romanos[6]  = "VI";
    romanos[7]  = "VII";  romanos[8]  = "VIII"; romanos[9]  = "IX";
    romanos[10] = "X";    romanos[11] = "XI";   romanos[12] = "XII";
    romanos[13] = "XIII"; romanos[14] = "XIV";  romanos[15] = "XV";
    romanos[16] = "XVI";  romanos[17] = "XVII"; romanos[18] = "XVIII";
    romanos[19] = "XIX";  romanos[20] = "XX";

    cout << "Ingrese un numero del 1 al 20: ";
    cin >> n;

    if (n >= 1 && n <= 20) {
        cout << n << " en romano es: " << romanos[n] << endl;
    } else {
        cout << "Numero fuera de rango." << endl;
    }

    return 0;
}
