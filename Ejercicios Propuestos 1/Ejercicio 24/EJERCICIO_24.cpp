#include <iostream>
using namespace std;
int main() {
    int num_postulantes, i;
    int corr_rmv, inc_rmv, corr_cie, inc_cie, corr_let, inc_let;
    int cant_ingresantes;
    double nota_final, suma_notas, suma_notas_cuadrado;
    double media, varianza, nota_min_ing, nota_max_ing;
    bool tiene_ingresantes;
      num_postulantes = 5; 
    suma_notas = 0;
    suma_notas_cuadrado = 0;
    cant_ingresantes = 0;
    tiene_ingresantes = false;
    nota_min_ing = 999;
    nota_max_ing = -999;

    for (i = 1; i <= num_postulantes; i++) {
        cout << "==================================================" << endl;
        cout << "PROCESANDO POSTULANTE N* " << i << endl;
        cout << "==================================================" << endl;
        
        cout << "Parte 1: Razonamiento Mat. y Verbal (Max 40)" << endl;
        cout << " - Cantidad de respuestas CORRECTAS: ";
        cin >> corr_rmv;
        cout << " - Cantidad de respuestas INCORRECTAS: ";
        cin >> inc_rmv;
        
        cout << "Parte 2: Conocimiento en Ciencias (Max 30)" << endl;
        cout << " - Cantidad de respuestas CORRECTAS: ";
        cin >> corr_cie;
        cout << " - Cantidad de respuestas INCORRECTAS: ";
        cin >> inc_cie;
        
        cout << "Parte 3: Conocimiento en Letras (Max 30)" << endl;
        cout << " - Cantidad de respuestas CORRECTAS: ";
        cin >> corr_let;
        cout << " - Cantidad de respuestas INCORRECTAS: ";
        cin >> inc_let;

        nota_final = (corr_rmv * 2.0 - inc_rmv * 1.0) + 
                     (corr_cie * 3.0 - inc_cie * 1.5) + 
                     (corr_let * 1.0 - inc_let * 0.5);

        suma_notas += nota_final;
        suma_notas_cuadrado += (nota_final * nota_final);

        cout << " -> Nota final del postulante: " << nota_final << endl;

        if (nota_final >= 120.0 && cant_ingresantes < 150) {
            cout << " -> RESULTADO: !INGRESO!" << endl;
            cant_ingresantes++;
            tiene_ingresantes = true;

            if (nota_final < nota_min_ing) {
                nota_min_ing = nota_final;
            }
            if (nota_final > nota_max_ing) {
                nota_max_ing = nota_final;
            }
        } else {
            cout << " -> RESULTADO: NO INGRESO" << endl;
        }
        cout << endl;
    }

    media = suma_notas / num_postulantes;
    varianza = (suma_notas_cuadrado / num_postulantes) - (media * media);

    cout << "==================================================" << endl;
    cout << "                REPORTE GENERAL                   " << endl;
    cout << "==================================================" << endl;
    cout << "b) Media aritmetica de las notas: " << media << endl;
    cout << "c) Varianza de las notas: " << varianza << endl;
    
    if (tiene_ingresantes) {
        cout << "d) Reporte de Ingresantes: " << endl;
        cout << "   - Vacantes ocupadas: " << cant_ingresantes << endl;
        cout << "   - Nota MINIMA entre ingresantes: " << nota_min_ing << endl;
        cout << "   - Nota MAXIMA entre ingresantes: " << nota_max_ing << endl;
    } else {
        cout << "d) Reporte de Ingresantes: Ningun postulante logro ingresar." << endl;
    }
    cout << "==================================================" << endl;

    return 0;
}
