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
            pathImagem: 'assets/images/tvSmart-philco.png'),
        Produto(
            preco: ' R\$ 2.849,00',
            nome: "Smart Tv LG 55pol Led 4K UHD",
            pathImagem: 'assets/images/tv-lg.png'),
        Produto(
            preco: ' R\$ 2.089,00',
            nome: "Tv Philips 50pol Smart 4K",
            pathImagem: 'assets/images/tvSmart-philips.png'),
        Produto(
            preco: ' R\$ 1.089,00',
            nome: "Smart Tv Monitor 24pol Led",
            pathImagem: 'assets/images/tvSmart-Lg.png'),
        Produto(
            preco: ' R\$ 4.986,00',
            nome: "Smart Tv Samsung 55pol Neo Qled",
            pathImagem: 'assets/images/tv-sansung-neo.png'),
        Produto(
            preco: ' R\$ 5.823,90',
            nome: "Smart Tv 65pol Tcl Qled",
            pathImagem: 'assets/images/tv-tcl.png'),
      ],
    );
  }
}
