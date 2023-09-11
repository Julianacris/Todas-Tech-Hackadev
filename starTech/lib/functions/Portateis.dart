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

class PortateisState extends State<Portateis> {
  @override
  void initState() {
    super.initState();
  }

  List<dynamic> list = [
    {
      "preco": ' R\$ 869,90',
      "nome": "Filtro de água Consul",
      "pathImagem": 'assets/images/filtro_agua.png',
      "quantidadeEstrelas": 4,
      "quantidadeMaxParcelas": 12,
      "valorDaParcela": 869.90 / 12,
      "descricaoLonga":
          "Filtro de água ConsulFiltro de água ConsulFiltro de água ConsulFiltro de água ConsulFiltro de água Consul",
      "detalhesTecnicos":
          "filtro - - Marca | Amazfit \n Fabricante | Amazfit   \n Modelo | 23840 \n  Número da peça | 9-GTS 2 Mini Black   \n   Tipo Do Produto | Esporte   \n   RAM |  1gb",
    },
    {
      "preco": ' R\$ 429,00',
      "nome": "Alexa Echo Dot",
      "pathImagem": 'assets/images/alexa-echo.png',
      "quantidadeEstrelas": 4,
      "quantidadeMaxParcelas": 12,
      "valorDaParcela": 429.00 / 12,
      "descricaoLonga":
          "Alexa Echo DotAlexa Echo DotAlexa Echo DotAlexa Echo DotAlexa Echo DotAlexa Echo DotAlexa Echo Dot",
      "detalhesTecnicos":
          "alext echo  - Marca | Amazfit \n Fabricante | Amazfit   \n Modelo | 23840 \n  Número da peça | 9-GTS 2 Mini Black   \n   Tipo Do Produto | Esporte   \n   RAM |  1gb",
    },
    {
      "preco": ' R\$ 7.220,66',
      "nome": "Drone Dji Mini 3 Pro",
      "pathImagem": 'assets/images/drone-dji.png',
      "quantidadeEstrelas": 4,
      "quantidadeMaxParcelas": 12,
      "valorDaParcela": 7220.66 / 12,
      "descricaoLonga":
          "Drone Dji Mini 3 ProDrone Dji Mini 3 ProDrone Dji Mini 3 Pro",
      "detalhesTecnicos":
          "drone  - Marca | Amazfit \n Fabricante | Amazfit   \n Modelo | 23840 \n  Número da peça | 9-GTS 2 Mini Black   \n   Tipo Do Produto | Esporte   \n   RAM |  1gb",
    },
    {
      "preco": ' R\$ 1.069,00',
      "nome": "Purificador De Água Electrolux",
      "pathImagem": 'assets/images/purificador-agua.png',
      "quantidadeEstrelas": 4,
      "quantidadeMaxParcelas": 12,
      "valorDaParcela": 1.069 / 12,
      "descricaoLonga":
          "Purificador De Água ElectroluxPurificador De Água ElectroluxPurificador De Água ElectroluxPurificador De Água Electrolux",
      "detalhesTecnicos":
          "purificador - Marca | Amazfit \n Fabricante | Amazfit   \n Modelo | 23840 \n  Número da peça | 9-GTS 2 Mini Black   \n   Tipo Do Produto | Esporte   \n   RAM |  1gb",
    },
    {
      "preco": ' R\$ 399,00',
      "nome": "Fone De Ouvido Jbl Tune",
      "pathImagem": 'assets/images/Headphone-Tune-JBL.png',
      "quantidadeEstrelas": 4,
      "quantidadeMaxParcelas": 12,
      "valorDaParcela": 399 / 12,
      "descricaoLonga":
          "Fone De Ouvido Jbl TuneFone De Ouvido Jbl TuneFone De Ouvido Jbl TuneFone De Ouvido Jbl Tune",
      "detalhesTecnicos":
          "fone de ouvido - Marca | Amazfit \n Fabricante | Amazfit   \n Modelo | 23840 \n  Número da peça | 9-GTS 2 Mini Black   \n   Tipo Do Produto | Esporte   \n   RAM |  1gb",
    },
    {
      "preco": ' R\$ 552,92',
      "nome": "Smartwatch Amazfit Gts 4 Mini",
      "pathImagem": 'assets/images/relogio-amazfit.png',
      "quantidadeEstrelas": 4,
      "quantidadeMaxParcelas": 12,
      "valorDaParcela": 552.92 / 12,
      "descricaoLonga":
          "Smartwatch Amazfit Gts 4 MiniSmartwatch Amazfit Gts 4 MiniSmartwatch Amazfit Gts 4 MiniSmartwatch Amazfit Gts 4 MiniSmartwatch Amazfit Gts 4 Mini",
      "detalhesTecnicos":
          "smart watch - Marca | Amazfit \n Fabricante | Amazfit   \n Modelo | 23840 \n  Número da peça | 9-GTS 2 Mini Black   \n   Tipo Do Produto | Esporte   \n   RAM |  1gb",
    },
    {
      "preco": ' R\$ 538,90',
      "nome": "Robô Aspirador Mars",
      "pathImagem": 'assets/images/robo-aspirador.png',
      "quantidadeEstrelas": 4,
      "quantidadeMaxParcelas": 12,
      "valorDaParcela": 538.9 / 12,
      "descricaoLonga":
          "Robô Aspirador MarsRobô Aspirador MarsRobô Aspirador MarsRobô Aspirador MarsRobô Aspirador MarsRobô Aspirador Mars",
      "detalhesTecnicos":
          "robo aspirador - Marca | Amazfit \n Fabricante | Amazfit   \n Modelo | 23840 \n  Número da peça | 9-GTS 2 Mini Black   \n   Tipo Do Produto | Esporte   \n   RAM |  1gb",
    }
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
