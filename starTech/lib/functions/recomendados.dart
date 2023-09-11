import 'package:flutter/material.dart';
import 'package:hackadev/widgets/produto.dart';

class Recomendados extends StatefulWidget {
  const Recomendados({super.key});

  @override
  State<StatefulWidget> createState() {
    return RecomendadosState();
  }
}

class RecomendadosState extends State {
  List<dynamic> list = [
    {
      "preco": ' R\$ 429,00',
      "nome": "Alexa Echo Dot",
      "pathImagem": 'assets/images/alexa-echo.png',
      "quantidadeEstrelas": 4,
      "quantidadeMaxParcelas": 7,
      "valorDaParcela": 429 / 12,
      "descricaoLonga":
          "Alexa Echo DotAlexa Echo DotAlexa Echo DotAlexa Echo Dot",
      "detalhesTecnicos":
          "alexa echo dot - Marca | Amazfit \n Fabricante | Amazfit   \n Modelo | 23840 \n  Número da peça | 9-GTS 2 Mini Black   \n   Tipo Do Produto | Esporte   \n   RAM |  1gb"
    },
    {
      "preco": ' R\$ 4.249,00',
      "nome": "Iphone 13 128gb Azul",
      "pathImagem": 'assets/images/iphone-azul.png',
      "quantidadeEstrelas": 4,
      "quantidadeMaxParcelas": 12,
      "valorDaParcela": 4249 / 12,
      "descricaoLonga":
          "Iphone 13 128gb AzulIphone 13 128gb AzulIphone 13 128gb AzulIphone 13 128gb AzulIphone 13 128gb Azul",
      "detalhesTecnicos":
          "Iphone 13 128gb - Marca | Amazfit \n Fabricante | Amazfit   \n Modelo | 23840 \n  Número da peça | 9-GTS 2 Mini Black   \n   Tipo Do Produto | Esporte   \n   RAM |  1gb"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: MediaQuery.of(context).size.width,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 250, crossAxisSpacing: 20, mainAxisSpacing: 20),
        itemCount: list.length,
        itemBuilder: (BuildContext ctx, index) {
          return Produto(
            preco: list[index]["preco"],
            nome: list[index]["nome"],
            pathImagem: list[index]["pathImagem"],
            quantidadeEstrelas: list[index]["quantidadeEstrelas"],
            quantidadeMaxParcelas: list[index]["quantidadeMaxParcelas"],
            valorDaParcela: list[index]["valorDaParcela"],
            descricaoLonga: list[index]["descricaoLonga"],
            detalhesTecnicos: list[index]["detalhesTecnicos"],
          );
        },
      ),
    );
  }
}
