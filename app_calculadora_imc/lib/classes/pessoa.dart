class Pessoa {
  String _nome = "";
  String _peso = "";
  String _altura = "";
  String _classificacaoIMC = "";
  String _imc = "";

  Pessoa(String nome, String peso, String altura) {
    _nome = nome;
    _peso = peso;
    _altura = altura;
  }

  String getNome() {
    return _nome;
  }

  void setNome(String nome) {
    _nome = nome;
  }

  String getPeso() {
    return _peso;
  }

  void setPeso(String peso) {
    _peso = peso;
  }

  String getAltura() {
    return _altura;
  }

  void setAltura(String altura) {
    _altura = altura;
  }

  String getIMC() {
    return _imc;
  }

  void setIMC(String imc) {
    _imc = imc;
  }

  String getClassificacaoIMC() {
    return _classificacaoIMC;
  }

  void setClassificacaoIMC(String classificacaoIMC) {
    _classificacaoIMC = classificacaoIMC;
  }

  @override
  String toString() {
    return {
      "Nome": getNome(),
      "Peso": getPeso(),
      "Altura": getAltura(),
      "IMC": getIMC(),
      "Classificação": getClassificacaoIMC()
    }.toString();
  }
}
