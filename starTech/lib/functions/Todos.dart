//GridView que vai conter todos os produtos

// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:hackadev/widgets/produto.dart';

class TodosProd extends StatefulWidget {
  const TodosProd({super.key});

  @override
  State<StatefulWidget> createState() {
    return TodosProdState();
  }
}

class TodosProdState extends State {
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
            preco: ' R\$ 4.249,00',
            nome: "Iphone 13 128gb Azul",
            pathImagem: 'assets/images/iphone-azul.png'),
        Produto(
            preco: ' R\$ 869,90',
            nome: "Filtro de água Consul",
            pathImagem: 'assets/images/filtro-agua.webp'),
        Produto(
            preco: ' R\$ 4.249,00',
            nome: "Iphone 13 128gb Amarelo",
            pathImagem: 'assets/images/iphone-amarelo.png'),
        Produto(
            preco: ' R\$ 429,00',
            nome: "Alexa Echo Dot",
            pathImagem: 'assets/images/alexa-echo.png'),
        Produto(
            preco: ' R\$ 3.698,99',
            nome: "Iphone 12 64gb",
            pathImagem: 'assets/images/iphone-branco.png'),
        Produto(
            preco: ' R\$ 3.858,57',
            nome: "Smartphone Motorola Edge 30 Ultra",
            pathImagem: 'assets/images/celular-motorola.png'),
        Produto(
            preco: ' R\$ 3.779,10',
            nome: "Samsung Galaxy S22 Ultra",
            pathImagem: 'assets/images/celular-samsung-s22.png'),
        Produto(
            preco: ' R\$ 2.499,00',
            nome: "Samsung Galaxy S22",
            pathImagem: 'assets/images/celular-samsung.png'),
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
        Produto(
            preco: ' R\$ 2.849,00',
            nome: "Smart Tv LG 55pol Led 4K UHD",
            pathImagem: 'assets/images/tv-Lg.png'),
        Produto(
            preco: ' R\$ 4.986,00',
            nome: "Smart Tv Samsung 55pol Neo Qled",
            pathImagem: 'assets/images/tv-samsung-neo.png'),
        Produto(
            preco: ' R\$ 5.823,90',
            nome: "Smart Tv 65pol Tcl Qled",
            pathImagem: 'assets/images/tv-tcl.png'),
        Produto(
            preco: ' R\$ 1.089,00',
            nome: "Smart Tv Monitor 24pol Led",
            pathImagem: 'assets/images/tvSmart-Lg.png'),
        Produto(
            preco: ' R\$ 2.089,00',
            nome: "Tv Philips 50pol Smart 4K",
            pathImagem: 'assets/images/tvSmart-philips.png'),
        Produto(
            preco: ' R\$ 1.399,00',
            nome: "Smart Tv 40pol Philco Led",
            pathImagem: 'assets/images/tvSmart-philco.png'),
      ],
    );
  }
}


