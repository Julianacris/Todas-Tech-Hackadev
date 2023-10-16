// ignore_for_file: file_names
import 'package:flutter/material.dart';

import '../model/produto.dart';

class DetalhesProduto extends StatelessWidget {
  final Produto productData;

  const DetalhesProduto({super.key, required this.productData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhes do Produto'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('Nome: ${productData.nome} \n'),
            Text('Preço: ${productData.preco?.toStringAsFixed(2)} \n'),
            Text('Categoria: ${productData.categoria}\n'),
            Text('Estrelas: ${productData.quantidadeEstrelas}\n'),
            Text(
                'Quantidade máxima de parcelas: ${productData.quantidadeMaxParcelas}\n'),
            Text(
                'Valor das parcelas: ${productData.valorDaParcela?.toStringAsFixed(2)}\n'),
            Text('Descrição: ${productData.descricaoLonga}\n'),
            Text('Detalhes Técnicos: ${productData.detalhesTecnicos}\n'),
          ],
        ),
      ),
    );
  }
}
