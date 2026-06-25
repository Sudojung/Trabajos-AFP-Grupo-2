#include <iostream>

using namespace std;

int main() {
    int inicio, final, i;
    int sumaPar, sumaImp;
    
    sumaPar = 0;
    sumaImp = 0;
    
    cout << "Ingrese el número de INICIO:" << endl;
    cin >> inicio;
    
    cout << "Ingrese el número de FIN:" << endl;
    cin >> final;
    
    cout << "--------------------------------------------------" << endl;
    
      for (i = inicio; i <= final; i++) {
        
        // Aquí determinamos si nuestro número actual es par o impar
        if (i % 2 == 0) {
            // Si el residuo es 0, es PAR. Lo guardamos en nuestra suma de pares.
            sumaPar = sumaPar + i; 
        } else {
            // Si el residuo no es 0, es IMPAR. Lo guardamos en nuestra suma de impares.
            sumaImp = sumaImp + i; 
        }
        
    }
    
    // Imprimimos nuestros resultados finales
    cout << "Rango: del " << inicio << " al " << final << endl;
    cout << "-> La suma total de los números PARES es: " << sumaPar << endl;
    cout << "-> La suma total de los números IMPARES es: " << sumaImp << endl;
    cout << "--------------------------------------------------" << endl;
    
    return 0;
}