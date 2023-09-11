//GridView que vai conter as Tvs

// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:hackadev/widgets/produto.dart';

class Tvs extends StatefulWidget {
  const Tvs({super.key});

  @override
  State<StatefulWidget> createState() {
    return TvsState();
  }
}

class TvsState extends State {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: const <Widget>[
        Produto(
          preco: ' R\$ 1.399,00',
          nome: "Smart Tv 40pol Philco Led",
          pathImagem: 'assets/images/tvSmart-philco.png',
          quantidadeEstrelas: 4,
          quantidadeMaxParcelas: 24,
          valorDaParcela: 58.29,
          descricaoLonga:
              "Smart Tv 40pol Philco Led Smart Tv 40pol Philco Led Smart Tv 40pol Philco Led",
          detalhesTecnicos:
              "'1 -   Marca | Amazfit \n Fabricante | Amazfit   \n Modelo | 23840 \n  Número da peça | 9-GTS 2 Mini Black   \n   Tipo Do Produto | Esporte   \n   RAM |  1gb',",
        ),
        Produto(
          preco: ' R\$ 2.849,00',
          nome: "Smart Tv LG 55pol Led 4K UHD",
          pathImagem: 'assets/images/tv-Lg.png',
          quantidadeEstrelas: 1,
          quantidadeMaxParcelas: 24,
          valorDaParcela: 2849 / 24,
          descricaoLonga:
              "Smart Tv LG 55pol Led 4K UHD Smart Tv LG 55pol Led 4K UHD Smart Tv LG 55pol Led 4K UHD",
          detalhesTecnicos:
              '2 - Marca | Amazfit \n Fabricante | Amazfit   \n Modelo | 23840 \n  Número da peça | 9-GTS 2 Mini Black   \n   Tipo Do Produto | Esporte   \n   RAM |  1gb',
        ),
        Produto(
          preco: ' R\$ 2.089,00',
          nome: "Tv Philips 50pol Smart 4K",
          pathImagem: 'assets/images/tvSmar-philips.png',
          quantidadeEstrelas: 3,
          quantidadeMaxParcelas: 24,
          valorDaParcela: 2089 / 24,
          descricaoLonga:
              "Tv Philips 50pol Smart 4K Tv Philips 50pol Smart 4K Tv Philips 50pol Smart 4K",
          detalhesTecnicos:
              ' 3 - Marca | Amazfit \n Fabricante | Amazfit   \n Modelo | 23840 \n  Número da peça | 9-GTS 2 Mini Black   \n   Tipo Do Produto | Esporte   \n   RAM |  1gb',
        ),
        Produto(
          preco: ' R\$ 1.089,00',
          nome: "Smart Tv Monitor 24pol Led",
          pathImagem: 'assets/images/tvSmart-Lg.png',
          quantidadeEstrelas: 2,
          quantidadeMaxParcelas: 24,
          valorDaParcela: 1089 / 24,
          descricaoLonga:
              "Smart Tv Monitor 24pol LedSmart Tv Monitor 24pol Led Smart Tv Monitor 24pol Led",
          detalhesTecnicos:
              '4 - Marca | Amazfit \n Fabricante | Amazfit   \n Modelo | 23840 \n  Número da peça | 9-GTS 2 Mini Black   \n   Tipo Do Produto | Esporte   \n   RAM |  1gb',
        ),
        Produto(
          preco: ' R\$ 4.986,00',
          nome: "Smart Tv Samsung 55pol Neo Qled",
          pathImagem: 'assets/images/tv-samsung-neo.png',
          quantidadeEstrelas: 4,
          quantidadeMaxParcelas: 24,
          valorDaParcela: 4986 / 24,
          descricaoLonga:
              "Smart Tv Samsung 55pol Neo Qled Smart Tv Samsung 55pol Neo Qled Smart Tv Samsung 55pol Neo Qled",
          detalhesTecnicos:
              '5 - Marca | Amazfit \n Fabricante | Amazfit   \n Modelo | 23840 \n  Número da peça | 9-GTS 2 Mini Black   \n   Tipo Do Produto | Esporte   \n   RAM |  1gb',
        ),
        Produto(
          preco: ' R\$ 5.823,90',
          nome: "Smart Tv 65pol Tcl Qled",
          pathImagem: 'assets/images/tv-tcl.png',
          quantidadeEstrelas: 5,
          quantidadeMaxParcelas: 36,
          valorDaParcela: 5823.90 / 36,
          descricaoLonga:
              "Smart Tv 65pol Tcl Qled Smart Tv 65pol Tcl Qled Smart Tv 65pol Tcl Qled",
          detalhesTecnicos:
              ' tv 65 - Marca | Amazfit \n Fabricante | Amazfit   \n Modelo | 23840 \n  Número da peça | 9-GTS 2 Mini Black   \n   Tipo Do Produto | Esporte   \n   RAM |  1gb',
        ),
      ],
    );
  }
}
