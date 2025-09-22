import 'package:buenaspracticas/buenaspracticas.dart';
import 'package:test/test.dart';

void main() {

  test('no balanceada', (){
    int resultado = comprobarBalanceo(['{,(,),],},']);
    expect(resultado, 0);
  });

  test('expresión vacía', () {
    int resultado = comprobarBalanceo(['']);
    expect(resultado, 1); 
  });

  test('balanceado', (){
    int resultado = comprobarBalanceo(['{[()]}']);
    expect(resultado, 1);
  });

  test('balanceado con numeros', (){
    int resultado = comprobarBalanceo(['[5*8(({[5]}6+4))]']);
    expect(resultado, 1);
  });

}
