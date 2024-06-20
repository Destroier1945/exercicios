import 'dart:io';

void main() {
  int sexo;
  int idade;

  print('Qual o seu sexo? (1)Masc -  (2)Fem');
  sexo = int.parse(stdin.readLineSync()!);
  if (sexo == 1) {
    print('Sexo masculino ');
  } else if (sexo == 2) {
    print('Sexo feminino');
  } else {
    print('Não declarado');
  }
  print('Qual a sua idade? ');
  idade = int.parse(stdin.readLineSync()!);

  if (idade < 18) {
    print('Menor de idade');
  } else {
    print('Maior de idade');
  }
}
