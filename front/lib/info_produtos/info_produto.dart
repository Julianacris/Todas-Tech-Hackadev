import 'package:flutter/material.dart';
import 'package:hackadev/info_produtos/Relacionados.dart';
import 'package:hackadev/info_produtos/produto/Avaliacao.dart';
import 'package:hackadev/info_produtos/produto/Info.dart';
import 'package:hackadev/widgets/botaoComprar.dart';
import 'package:hackadev/widgets/search_bar.dart';

class InfoProduto extends StatefulWidget {
  final Function opcaoSelecionadaFuncao;
  final String preco;
  final String nome;
  final String pathImagem;
  final int quantidadeEstrelas;
  final int quantidadeMaxParcelas;
  final double valorDaParcela;
  final String descricaoLonga;
  final String detalhesTecnicos;

  const InfoProduto({
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
  State<InfoProduto> createState() => _InfoProdutoState();
}

class _InfoProdutoState extends State<InfoProduto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.black),
                    onPressed: () {
                      setState(() {
                        widget.opcaoSelecionadaFuncao(0, SizedBox());
                      });
                    },
                  ),
                ],
              ),
              const AppSearchBar(),
              Info(
                imagem: widget.pathImagem,
                nome: widget.nome,
                preco: widget.preco,
                quantidadeEstrelas: widget.quantidadeEstrelas,
              ),
              const SizedBox(
                height: 15,
              ),
              BotaoComprar(
                imagem: widget.pathImagem,
                preco: double.parse(widget.preco
                    .replaceAll('R\$', "")
                    .replaceAll(".", "")
                    .replaceAll(",", ".")),
                nome: widget.nome,
                callback: () {
                  widget.opcaoSelecionadaFuncao(1, SizedBox());
                },
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(245, 149, 183, 0.25),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(children: [
                  Text(
                    widget.preco,
                    style: const TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Em até ${widget.quantidadeMaxParcelas}x de R\$  ${widget.valorDaParcela.toStringAsFixed(2).replaceFirst(".", ",")}',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    widget.descricaoLonga,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 13,
                      height: 1.4,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    widget.detalhesTecnicos,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 14,
                      height: 1.4,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ]),
              ),
              Container(
                  height: 800,
                  child: const SizedBox(
                    child: Avaliacao(),
                  )),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Produtos Relacionados:',
                style: TextStyle(
                  color: Color.fromARGB(255, 84, 12, 48),
                  fontFamily: 'Arial',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                height: 700,
                child: SizedBox(
                  child: Relacionados(
                    opcaoSelecionadaFuncao: widget.opcaoSelecionadaFuncao,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
