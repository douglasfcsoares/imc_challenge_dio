import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  stdout.write('Digite seu peso em Kg (Ex.: 82.5): ');
  double peso = double.parse(stdin.readLineSync().toString());

  stdout.write('Digite sua altura em metros (Ex.: 1.80): ');
  double altura = double.parse(stdin.readLineSync().toString());

  double imc = peso / (altura * altura);

  debugPrint('Seu IMC é ${imc.toStringAsFixed(2)}');

  if (imc < 16) {
    debugPrint('Magreza grave');
  } else if (imc < 17) {
    debugPrint('Magreza moderada');
  } else if (imc < 18.5) {
    debugPrint('Magreza leve');
  } else if (imc < 25) {
    debugPrint('Saudável');
  } else if (imc < 30) {
    debugPrint('Sobrepeso');
  } else if (imc < 35) {
    debugPrint('Obesidade – GRAU I');
  } else if (imc < 40) {
    debugPrint('Obesidade – GRAU II | Severa');
  } else {
    debugPrint('Obesidade – GRAU III | Mórbida');
  }
}
