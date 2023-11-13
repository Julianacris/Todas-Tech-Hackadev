import 'package:flutter/material.dart';
// import 'package:hackadev/carrinho/produto.dart';
import 'package:hackadev/widgets/cadastroProduto.dart';

class DetalhesProduto extends StatelessWidget {
  final Produto productData;

  const DetalhesProduto({Key? key, required this.productData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhes do Produto'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Nome: ${productData.nome ?? ''}',
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              Text('Categoria: ${productData.categoria ?? ''}',
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              Text('Valor: ${productData.valor?.toStringAsFixed(2) ?? ''}',
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              Text(
                  'Quantidade Máxima de Parcelas: ${productData.parcelas ?? ''}',
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              Text(
                  'Valor das Parcelas: ${(productData.valor! / productData.parcelas!).toStringAsFixed(2)}',
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              Text('Descrição Longa: ${productData.descricao ?? ''}',
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              Text('Detalhes Técnicos: ${productData.detalhes ?? ''}',
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              // Exibição da imagem
              if (productData.imagem != null)
                Image.network(
                  'http://localhost:8000/api/${productData.imagem}',
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                )
            ],
          ),
        ),
      ),
    );
  }
}
