import 'pessoa_abstract.dart';
import 'package:meu_app_oo/enum/tipo_notificacao.dart';

class PessoaJuridica extends Pessoa {
  String _cnpj = "";

  void setCpf(String cnpj) {
    _cnpj = cnpj;
  }

  String getCpf() {
    return _cnpj;
  }

  PessoaJuridica(String nome, String endereco, String cnpj,
      {TipoNotificacao tipoNotificacao = TipoNotificacao.NENHUM})
      : super(nome, endereco, tipoNotificacao: tipoNotificacao) {
    _cnpj = cnpj;
  }
  @override
  String toString() {
    return {
      "Nome": super.getNome(),
      "Endereço": super.getEndereco(),
      "CNPJ": _cnpj,
      "TipoNotificacao": super.getTipoNotificacao()
    }.toString();
  }
}
