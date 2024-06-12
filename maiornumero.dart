import 'dart:io';

lerNumero(String mensagem) {
  print(mensagem);
  String? input;
  input = stdin.readLineSync();
  if (input != null) {
    try {
      return double.parse(input);
    } catch (e) {
      throw Exception('Valor incorreto: $input não é um numero valido');
    }
  } else {
    throw Exception('nenhum valor foi inserido.');
  }
}

maiorNumero() {
  print('Digite 3 números para saber qual o maior, valido somente numeros');
  try {
    double val1 = lerNumero('Digite o primeiro valor: ');
    double val2 = lerNumero('Digite o segundo valor: ');
    double val3 = lerNumero('Digite o terceiro valor: ');

    double maior = val1;
    if (val2 > val1) maior = val2;
    if (val3 > val2) maior = val3;

    print('O maior valor é $maior');
  } catch (e) {
    print('Erro: ${e.toString()}');
  }
}
