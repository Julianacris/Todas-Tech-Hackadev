//GridView que vai conter os eletroportáteis

// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:hackadev/widgets/produto.dart';

class Portateis extends StatefulWidget {
  const Portateis({super.key});

  @override
  State<StatefulWidget> createState() {
    return PortateisState();
  }
}

class PortateisState extends State {
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
            preco: ' R\$ 869,90',
            nome: "Filtro de água Consul",
            pathImagem: 'assets/images/filtro-agua.webp'),
        Produto(
            preco: ' R\$ 429,00',
            nome: "Alexa Echo Dot",
            pathImagem: 'assets/images/alexa-echo.png'),
        Produto(
            preco: ' R\$ 7.220,66',
            nome: "Drone Dji Mini 3 Pro",
            pathImagem: 'assets/images/drone-dji.png'),
        Produto(
            preco: ' R\$ 1.069,00',
            nome: "Purificador De Água Electrolux",
            pathImagem: 'assets/images/purificador-agua.png'),
        Produto(
            preco: ' R\$ 399,00',
            nome: "Fone De Ouvido Jbl Tune",
            pathImagem: 'assets/images/Headphone-Tune-JBL.png'),
        Produto(
            preco: ' R\$ 552,92',
            nome: "Smartwatch Amazfit Gts 4 Mini",
            pathImagem: 'assets/images/relogio-amazfit.png'),
        Produto(
            preco: ' R\$ 538,90',
            nome: "Robô Aspirador Mars",
            pathImagem: 'assets/images/robo-aspirador.png'),
      ],
    );
  }
}
