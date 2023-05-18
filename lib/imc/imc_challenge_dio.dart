import 'dart:io';

void main() {
  stdout.write('Digite seu peso em Kg (Ex.: 82.5): ');
  double peso = double.parse(stdin.readLineSync().toString());

  stdout.write('Digite sua altura em metros (Ex.: 1.80): ');
  double altura = double.parse(stdin.readLineSync().toString());

  double imc = peso / (altura * altura);

  print('Seu IMC é ${imc.toStringAsFixed(2)}');

  if (imc < 16) {
    print('Magreza grave');
  } else if (imc < 17) {
    print('Magreza moderada');
  } else if (imc < 18.5) {
    print('Magreza leve');
  } else if (imc < 25) {
    print('Saudável');
  } else if (imc < 30) {
    print('Sobrepeso');
  } else if (imc < 35) {
    print('Obesidade – GRAU I');
  } else if (imc < 40) {
    print('Obesidade – GRAU II | Severa');
  } else {
    print('Obesidade – GRAU III | Mórbida');
  }
}
