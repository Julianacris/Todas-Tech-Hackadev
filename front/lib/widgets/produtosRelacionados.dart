import 'package:flutter/material.dart';
import 'package:hackadev/info_produtos/info_produto.dart';

class produtosRelacionados extends StatefulWidget {
  final Function opcaoSelecionadaFuncao;
  final String preco;
  final String nome;
  final String pathImagem;
  final int quantidadeEstrelas;
  final int quantidadeMaxParcelas;
  final double valorDaParcela;
  final String descricaoLonga;
  final String detalhesTecnicos;

  const produtosRelacionados({
    super.key,
    required this.preco,
    required this.nome,
    required this.pathImagem,
    required this.quantidadeEstrelas,
    required this.quantidadeMaxParcelas,
    required this.valorDaParcela,
    required this.descricaoLonga,
    required this.detalhesTecnicos,
    required this.opcaoSelecionadaFuncao,
  });

  @override
  State<StatefulWidget> createState() {
    return ProdutosRelacionadosState();
  }
}

class ProdutosRelacionadosState extends State<produtosRelacionados> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.opcaoSelecionadaFuncao(
          4,
          InfoProduto(
            opcaoSelecionadaFuncao: widget.opcaoSelecionadaFuncao,
            nome: widget.nome,
            pathImagem: widget.pathImagem,
            preco: widget.preco,
            quantidadeEstrelas: widget.quantidadeEstrelas,
            quantidadeMaxParcelas: widget.quantidadeMaxParcelas,
            valorDaParcela: widget.valorDaParcela,
            descricaoLonga: widget.descricaoLonga,
            detalhesTecnicos: widget.detalhesTecnicos,
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
                  height: 90.0,
                  width: 90.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(widget.pathImagem),
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ),
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
                  padding: const EdgeInsets.all(5),
                  width: 100.0,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 147, 0, 75),
                      borderRadius: BorderRadius.circular(15)),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      widget.preco,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
