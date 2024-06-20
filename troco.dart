import 'dart:io';

void main() {
  validaEntrada(String msg) {
    print(msg);
    String? input;
    input = stdin.readLineSync();
    if (input != null) {
      try {
        return double.parse(input);
      } catch (e) {
        throw Exception(e);
      }
    } else {
      throw Exception('nenhum valor inserido');
    }
  }

  double totalCompra = validaEntrada('Digite o valor de compra ');

  print('Qual a forma de pagamento? ');
  print('(1)Dinheiro');
  print('(2)Crédito');
  print('(3)Credito');
}
