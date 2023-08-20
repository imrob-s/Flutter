import 'package:meu_app_oo/enum/tipo_notificacao.dart';

abstract class Pessoa {
  String _nome = "";
  String _endereco = "";
  String _email = "";
  String _celular = "";
  String _token = "";
  TipoNotificacao _tipoNotificacao = TipoNotificacao.NENHUM;

  void setNome(String nome) {
    _nome = nome;
  }

  String getNome() {
    return _nome;
  }

  void setEndereco(String endereco) {
    _endereco = endereco;
  }

  String getEndereco() {
    return _endereco;
  }

  void setEmail(String email) {
    _nome = email;
  }

  String getEmail() {
    return _email;
  }

  void setCelular(String celular) {
    _nome = celular;
  }

  String getCelular() {
    return _celular;
  }

  void setToken(String token) {
    _nome = token;
  }

  String getToken() {
    return _token;
  }

  void setTipoNotificacao(TipoNotificacao tipoNotificacao) {
    _tipoNotificacao = tipoNotificacao;
  }

  TipoNotificacao getTipoNotificacao() {
    return _tipoNotificacao;
  }

  Pessoa(String nome, String endereco,
      {TipoNotificacao tipoNotificacao = TipoNotificacao.NENHUM}) {
    _nome = nome;
    _endereco = endereco;
    _tipoNotificacao = tipoNotificacao;
  }

  @override
  String toString() {
    return {
      "Nome": _nome,
      "Endereço": _endereco,
      "TipoNotificacao": _tipoNotificacao
    }.toString();
  }
}
