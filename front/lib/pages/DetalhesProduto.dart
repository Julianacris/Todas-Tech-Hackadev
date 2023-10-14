// ignore_for_file: file_names
import 'package:flutter/material.dart';

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
    );
  }
}


class DetalhesProduto extends StatelessWidget {
  final Produto productData;

  const DetalhesProduto({super.key, required this.productData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Detalhes do Produto'),
      ),
      body: Container(
        padding: 
        const EdgeInsets.all(50),
        alignment: Alignment.centerLeft,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            RichText(
              text: TextSpan(
                style: const TextStyle(
                    fontSize: 15
                ),
                children: <TextSpan>[
                  const TextSpan(text: "Nome: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: '${productData.nome} \n'),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                style: const TextStyle(
                    fontSize: 15
                ),
                children: <TextSpan>[
                  const TextSpan(text: "Preço: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: '${productData.preco?.toStringAsFixed(2)} \n'),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                style: const TextStyle(
                    fontSize: 15
                ),
                children: <TextSpan>[
                  const TextSpan(text: "Categoria:", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: '${productData.categoria} \n'),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                style: const TextStyle(
                    fontSize: 15
                ),
                children: <TextSpan>[
                  const TextSpan(text: "Estrelas: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: '${productData.quantidadeEstrelas} \n'),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                style: const TextStyle(
                    fontSize: 15
                ),
                children: <TextSpan>[
                  const TextSpan(text: "Quantidade máxima de parcelas: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: '${productData.quantidadeMaxParcelas} \n'),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                style: const TextStyle(
                    fontSize: 15
                ),
                children: <TextSpan>[
                  const TextSpan(text: "Valor das parcelas: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: '${productData.valorDaParcela} \n'),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                style: const TextStyle(
                    fontSize: 15
                ),
                children: <TextSpan>[
                  const TextSpan(text: "Descrição: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: '${productData.descricaoLonga} \n'),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                style: const TextStyle(
                    fontSize: 15
                ),
                children: <TextSpan>[
                  const TextSpan(text: "Detalhes Técnicos: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: '${productData.detalhesTecnicos} \n'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
