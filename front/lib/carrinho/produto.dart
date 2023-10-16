class Produto {
  int? id;
  String? nome;
  double? preco;
  String? categoria;
  int? quantidadeEstrelas;
  int? quantidadeMaxParcelas;
  double? valorDaParcela;
  String? descricaoLonga;
  String? detalhesTecnicos;
  String? imagem;

  Produto({
    this.id,
    this.nome,
    this.preco,
    this.categoria,
    this.quantidadeEstrelas,
    this.quantidadeMaxParcelas,
    this.valorDaParcela,
    this.descricaoLonga,
    this.detalhesTecnicos,
    this.imagem,
  });

  factory Produto.fromJson(Map<String, dynamic> json) {
    return Produto(
      id: json['id'],
      nome: json['nome'],
      preco: json['preco'].toDouble(),
      categoria: json['categoria'],
      quantidadeEstrelas: json['quantidadeEstrelas'],
      quantidadeMaxParcelas: json['quantidadeMaxParcelas'],
      valorDaParcela: json['valorDaParcela'].toDouble(),
      descricaoLonga: json['descricaoLonga'],
      detalhesTecnicos: json['detalhesTecnicos'],
      imagem: json['imagem'],
    );
  }
}