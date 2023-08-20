import 'dart:math';
import 'package:app_calculadora_imc/classes/pessoa.dart';

extension NumberExtension on num {
  bool estaEntre(num min, num max) {
    return this >= min && this <= max;
  }
}

void calcularIMC(Pessoa pessoa) {
  double peso = double.parse(pessoa.getPeso());
  double altura = double.parse(pessoa.getAltura());
  double imc = peso / pow(altura, 2);

  pessoa.setIMC(imc.toStringAsFixed(1));
  pessoa.setClassificacaoIMC(classificacaoIMC(imc));
}

String classificacaoIMC(double imc) {
  Map<String, bool> imcMap = {
    'Magreza grave': imc < 16,
    'Magreza moderada': imc.estaEntre(16, 17),
    'Magreza leve': imc.estaEntre(17, 18.5),
    'Saudável': imc.estaEntre(18.5, 25),
    'Sobrebeso': imc.estaEntre(25, 30),
    'Obesidade grau 1': imc.estaEntre(30, 35),
    'Obesidade grau 2 (severa)': imc.estaEntre(35, 40),
    'Obesidade grau 3 (mórbida)': imc >= 40,
  };

  String qualClassificacao = '';
  imcMap.forEach((classificacao, valor) {
    if (valor) {
      qualClassificacao = classificacao;
    }
  });
  return qualClassificacao;
}
