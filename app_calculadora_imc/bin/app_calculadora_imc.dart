import 'package:app_calculadora_imc/app_calculadora_imc.dart';
import 'package:app_calculadora_imc/classes/pessoa.dart';
import 'package:app_calculadora_imc/utils/utils.dart';

void main(List<String> arguments) {
  print("Bem vindo a calculadora de IMC");
  String nome = Utils.lerStringComTexto("Digite seu nome: ");
  String peso = Utils.lerStringComTexto("Digite seu peso: ");
  String altura = Utils.lerStringComTexto("Digite sua altura: ");

  var pessoa = Pessoa(nome, peso, altura);
  calcularIMC(pessoa);
  clearScreen();

  print("As suas informações são:");
  print(pessoa.toString());
}
