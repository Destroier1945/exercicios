import 'dart:io';

void main() {
  print('Digite dois numeros para servir de intervalo');

  validaEntrada(String msg) {
    print(msg);
    String? input;
    input = stdin.readLineSync();
    if (input != null) {
      try {
        return double.parse(input!);
      } catch (e) {
        throw Exception(e);
      }
    } else {
      throw Exception('nenhum valor inserido');
    }
  }

  double interval1 = validaEntrada('Digite o primeiro numero do intervalo: ');
  double interval2 = validaEntrada('Digite o segundo numero do intervalo: ');
  double numValida = validaEntrada(
      'Qual o numero quer verificar se está dentro do intervalo? ');

  if (numValida >= interval2 && numValida >= interval1 ||
      numValida <= interval1 && numValida <= interval2) {
    print('Numero fora do intervalo');
  } else {
    print('Numero dentro do intervalo');
  }
}
