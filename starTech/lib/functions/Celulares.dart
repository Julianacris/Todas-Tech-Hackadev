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
          pathImagem: 'assets/images/celular-motorola.png',
          quantidadeEstrelas: 2,
          quantidadeMaxParcelas: 8,
          valorDaParcela: 3858.57 / 8,
          descricaoLonga:
              "Smartphone Motorola Edge 30 UltraSmartphone Motorola Edge 30 UltraSmartphone Motorola Edge 30 Ultra",
          detalhesTecnicos:
              ' motorlo edg 30 - Marca | Amazfit \n Fabricante | Amazfit   \n Modelo | 23840 \n  Número da peça | 9-GTS 2 Mini Black   \n   Tipo Do Produto | Esporte   \n   RAM |  1gb',
        ),
        Produto(
          preco: ' R\$ 3.698,99',
          nome: "Iphone 12 64gb",
          pathImagem: 'assets/images/iphone-branco.png',
          quantidadeEstrelas: 4,
          quantidadeMaxParcelas: 8,
          valorDaParcela: 3698.99 / 8,
          descricaoLonga:
              "Iphone 12 64gbIphone 12 64gbIphone 12 64gbIphone 12 64gb",
          detalhesTecnicos:
              'iphone 12 - Marca | Amazfit \n Fabricante | Amazfit   \n Modelo | 23840 \n  Número da peça | 9-GTS 2 Mini Black   \n   Tipo Do Produto | Esporte   \n   RAM |  1gb',
        ),
        Produto(
          preco: ' R\$ 4.249,00',
          nome: "Iphone 13 128gb Amarelo",
          pathImagem: 'assets/images/iphone-amarelo.png',
          quantidadeEstrelas: 1,
          quantidadeMaxParcelas: 8,
          valorDaParcela: 4249 / 8,
          descricaoLonga:
              "Iphone 13 128gb AmareloIphone 13 128gb AmareloIphone 13 128gb AmareloIphone 13 128gb Amarelo",
          detalhesTecnicos:
              ' iphone 13 - Marca | Amazfit \n Fabricante | Amazfit   \n Modelo | 23840 \n  Número da peça | 9-GTS 2 Mini Black   \n   Tipo Do Produto | Esporte   \n   RAM |  1gb',
        ),
        Produto(
          preco: ' R\$ 2.499,00',
          nome: "Samsung Galaxy S22",
          pathImagem: 'assets/images/celular-samsung.png',
          quantidadeEstrelas: 5,
          quantidadeMaxParcelas: 8,
          valorDaParcela: 2499 / 8,
          descricaoLonga:
              "Samsung Galaxy S22Samsung Galaxy S22Samsung Galaxy S22Samsung Galaxy S22",
          detalhesTecnicos:
              's22 - Marca | Amazfit \n Fabricante | Amazfit   \n Modelo | 23840 \n  Número da peça | 9-GTS 2 Mini Black   \n   Tipo Do Produto | Esporte   \n   RAM |  1gb',
        ),
        Produto(
          preco: ' R\$ 3.779,10',
          nome: "Samsung Galaxy S22 Ultra",
          pathImagem: 'assets/images/celular-samsung-s22.png',
          quantidadeEstrelas: 1,
          quantidadeMaxParcelas: 6,
          valorDaParcela: 3779.10,
          descricaoLonga:
              "Samsung Galaxy S22 UltraSamsung Galaxy S22 UltraSamsung Galaxy S22 UltraSamsung Galaxy S22 Ultra",
          detalhesTecnicos:
              ' s22 ultra - Marca | Amazfit \n Fabricante | Amazfit   \n Modelo | 23840 \n  Número da peça | 9-GTS 2 Mini Black   \n   Tipo Do Produto | Esporte   \n   RAM |  1gb',
        ),
        Produto(
          preco: ' R\$ 4.249,00',
          nome: "Iphone 13 128gb Azul",
          pathImagem: 'assets/images/iphone-azul.png',
          quantidadeEstrelas: 5,
          quantidadeMaxParcelas: 7,
          valorDaParcela: 4249 / 7,
          descricaoLonga:
              "Iphone 13 128gb AzulIphone 13 128gb AzulIphone 13 128gb Azul",
          detalhesTecnicos:
              ' iphone 13 aul -0 Marca | Amazfit \n Fabricante | Amazfit   \n Modelo | 23840 \n  Número da peça | 9-GTS 2 Mini Black   \n   Tipo Do Produto | Esporte   \n   RAM |  1gb',
        ),
      ],
    );
  }
}
