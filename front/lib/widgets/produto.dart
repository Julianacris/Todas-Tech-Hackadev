// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:hackadev/info_produtos/info_produto.dart';

class Produto extends StatefulWidget {
  final Function opcaoSelecionadaFuncao;
  final String valor;
  final String nome;
  final String imagem;
  final int quantidadeEstrelas;
  final int parcelas;
  final double valorDaParcela;
  final String descricao;
  final String detalhes;

  const Produto({
    super.key,
    required this.valor,
    required this.nome,
    required this.imagem,
    required this.quantidadeEstrelas,
    required this.parcelas,
    required this.valorDaParcela,
    required this.descricao,
    required this.detalhes,
    required this.opcaoSelecionadaFuncao,
  });

  @override
  State<StatefulWidget> createState() {
    return ProdutoState();
  }
}

class ProdutoState extends State<Produto> {
  bool isFavorite = false;

  void toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.opcaoSelecionadaFuncao(
          4,
          InfoProduto(
            opcaoSelecionadaFuncao: widget.opcaoSelecionadaFuncao,
            nome: widget.nome,
            imagem: widget.imagem,
            valor: widget.valor,
            quantidadeEstrelas: widget.quantidadeEstrelas,
            parcelas: widget.parcelas,
            valorDaParcela: widget.valorDaParcela,
            descricao: widget.descricao,
            detalhes: widget.detalhes,
          ),
        );
      },
      child: Stack(
        children: <Widget>[
          Container(
            width: 220,
            height: 220,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              //color: const Color.fromRGBO(245, 149, 183, 0.25),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                  color: const Color.fromARGB(255, 205, 0, 106), width: 2),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text(
                    widget.nome,
                    style: const TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  height: 90.0,
                  width: 90.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(widget.imagem),
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5),
                      width: 100.0,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 205, 0, 106),
                          borderRadius: BorderRadius.circular(15)),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          widget.valor,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    //icone favorito
                    IconButton(
                      icon: isFavorite
                          ? const Icon(Icons.favorite,
                              color: Color.fromARGB(255, 205, 0, 106))
                          : const Icon(Icons.favorite_border,
                              color: Color.fromARGB(255, 205, 0, 106)),
                      onPressed: toggleFavorite,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
