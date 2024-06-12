import 'dart:io';

void main() {
  double val1;
  double val2;
  double val3;

  String? input;

  print('Digite 3 números para saber qual o maior');
  print('Digite o primeiro valor: ');
  val1 = double.parse(stdin.readLineSync().toString());
  print('Digite o segundo valor: ');
  val2 = double.parse(stdin.readLineSync().toString());
  print('Digite o terceiro valor: ');
  val3 = double.parse(stdin.readLineSync().toString());
  if (val1 >= val2 && val1 >= val3) {
    print('$val1 é o maior valor');
  } else if (val2 >= val1 && val2 >= val3) {
    print('$val2 é o maior valor');
  } else {
    print('$val3 é o maior valor ');
  }
}
