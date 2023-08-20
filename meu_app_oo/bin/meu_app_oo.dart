import 'package:meu_app_oo/classes/pessoa_fisica.dart';
import 'package:meu_app_oo/classes/pessoa_juridica.dart';
import 'package:meu_app_oo/enum/tipo_notificacao.dart';
import 'package:meu_app_oo/service/EnviarNotificacao.dart';

void main(List<String> arguments) {
  var pessoaFisica1 = new PessoaFisica("Danilo", "Rua 1", "222222222");
  print(pessoaFisica1);

  var pessoaJuridica1 = new PessoaJuridica(
      "Empresa 1", "Rua 2", "562651463548546",
      tipoNotificacao: TipoNotificacao.EMAIL);
  print(pessoaJuridica1);

  EnviarNotificacao enviarNotificacao = EnviarNotificacao();
  enviarNotificacao.notificar(pessoaFisica1);
  enviarNotificacao.notificar(pessoaJuridica1);
}
