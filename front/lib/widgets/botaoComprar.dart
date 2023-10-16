import 'package:flutter/material.dart';
import 'package:hackadev/carrinho_de_compras/carrinho_de_compras.dart';
import 'package:hackadev/model/produto.dart';

class BotaoComprar extends StatefulWidget {
  final String imagem;
  final String nome;
  final double preco;
  final Function callback;
  const BotaoComprar({
    super.key,
    required this.imagem,
    required this.nome,
    required this.preco,
    required this.callback,
  });

  @override
  State<StatefulWidget> createState() {
    return BotaoComprarWidget();
  }
}

class BotaoComprarWidget extends State<BotaoComprar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 205,
      height: 38,
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            CarrinhoDeCompras.adicionarProduto(
              Produto(
                nome: widget.nome,
                preco: widget.preco,
                imagem: widget.imagem,
              ),
            );
          });
          widget.callback();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 147, 0, 75),
        ),

        child: const Text(
          'COMPRAR',
          style: TextStyle(
            fontSize: 20, // Tamanho da fonte do texto
            color: Colors.white,
            fontWeight: FontWeight.bold, // Cor do texto
          ),
        ), // Espaçamento interno
      ),
    );
  }
}
