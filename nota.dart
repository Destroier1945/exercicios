import 'dart:io';

void main() {
  double nota1 = 0;
  double nota2 = 0;
  double nota3 = 0;
  double nota4 = 0;
  String nome = '';

  print('Nome do aluno: ');
  nome = stdin.readLineSync()!;

  validaEntrada(String msg) {
    while (true) {
      print(msg);
      String input = stdin.readLineSync()!;
      try {
        double nota = double.parse(input);
        if (nota > 100 || nota < 0) {
          print('Nota incorreta, deve ser entre 0 e 100');
        } else {
          return nota;
        }
      } catch (e) {
        print('Entrada invalida, digite um valor valido');
      }
    }
  }

  nota1 = validaEntrada('Digite a primeira nota');
  nota2 = validaEntrada('Digite a segunda nota: ');
  nota3 = validaEntrada('Digite o valor da terceira nota: ');
  nota4 = validaEntrada('Digite o valor da quarta nota: ');

  double media = (nota1 + nota2 + nota3 + nota4) / 4;

  print('A média do aluno $nome é $media ');

  if (media >= 80) {
    print('ALUNO APROVADO');
  } else if (media > 50 && media < 80) {
    print('ALUNO EM RECUPERAÇÃO');
  } else {
    print('ALUNO REPROVADO');
  }
}///
