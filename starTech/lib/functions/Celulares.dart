//GridView que vai conter os celulares

// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:hackadev/widgets/produto.dart';

class Celulares extends StatefulWidget {
  const Celulares({super.key});

  @override
  State<StatefulWidget> createState() {
    return CelularesState();
  }
}

class CelularesState extends State {
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
            preco: ' R\$ 3.858,57',
            nome: "Smartphone Motorola Edge 30 Ultra",
            pathImagem: 'assets/images/celular-motorola.png'),
        Produto(
            preco: ' R\$ 3.698,99',
            nome: "Iphone 12 64gb",
            pathImagem: 'assets/images/iphone-branco.png'),
        Produto(
            preco: ' R\$ 4.249,00',
            nome: "Iphone 13 128gb Amarelo",
            pathImagem: 'assets/images/iphone-amarelo.png'),
        Produto(
            preco: ' R\$ 2.499,00',
            nome: "Samsung Galaxy S22",
            pathImagem: 'assets/images/celular-sansung.png'),
        Produto(
            preco: ' R\$ 3.779,10',
            nome: "Samsung Galaxy S22 Ultra",
            pathImagem: 'assets/images/celular-sansung-s22.png'),
        Produto(
            preco: ' R\$ 4.249,00',
            nome: "Iphone 13 128gb Azul",
            pathImagem: 'assets/images/iphone-azul.png'),
      ],
    );
  }
}
