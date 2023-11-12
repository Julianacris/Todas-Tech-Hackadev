
class Produto {
  int? id;
  String? nome;
  double? valor;
  String? categoria;
  int? quantidadeEstrelas;
  int? parcelas;
  double? valorDaParcela;
  String? descricao;
  String? detalhes;
  String? imagem;

  Produto({
    this.id,
    this.nome,
    this.valor,
    this.categoria,
    this.quantidadeEstrelas,
    this.parcelas,
    this.valorDaParcela,
    this.descricao,
    this.detalhes,
    this.imagem,
  });

  factory Produto.fromJson(Map<String, dynamic> json) {
    return Produto(
      id: json['id'],
      nome: json['nome'],
      valor: json['valor'],
      categoria: json['categoria'],
      quantidadeEstrelas: json['quantidadeEstrelas'],
      parcelas: json['parcelas'],
      valorDaParcela: json['valorDaParcela'],
      descricao: json['descricao'],
      detalhes: json['detalhes'],
      imagem: json['imagem'],
    );
  }
}