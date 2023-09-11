import 'package:flutter/material.dart';
import 'package:hackadev/info_produtos/produto/AvalRelogio.dart';
import 'package:hackadev/info_produtos/produto/Info.dart';
import 'package:hackadev/widgets/botaoComprar.dart';

class InfoProduto extends StatelessWidget {
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
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          nome,
          style: const TextStyle(
            fontSize: 24,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Info(
                imagem: pathImagem,
                nome: nome,
                preco: preco,
                quantidadeEstrelas: quantidadeEstrelas,
              ),
              const BotaoComprar(),
              const SizedBox(
                height: 15,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.all(30),
                color: const Color.fromRGBO(245, 149, 183, 0.25),
                height: 400,
                child: Column(children: [
                  Text(
                    preco,
                    style: const TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Em até ${quantidadeMaxParcelas}x de R\$  ${valorDaParcela.toStringAsFixed(2).replaceFirst(".", ",")}',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    descricaoLonga,
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
                    detalhesTecnicos,
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
<<<<<<< HEAD
                  child: AvalRelogio(),
                 )
                ),
              
              //AvalRelogio(),
=======
                    child: AvalRelogio()
                ),
              )
>>>>>>> 838396e99d183021bbc103fb6352d5545efe1b5e
            ],
          ),
        ),
      ),
    );
  }
}
