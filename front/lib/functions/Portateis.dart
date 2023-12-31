//GridView que vai conter os eletroportáteis

// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:hackadev/widgets/produto.dart';

class Portateis extends StatefulWidget {
  final Function opcaoSelecionadaFuncao;
  const Portateis({super.key, required this.opcaoSelecionadaFuncao});

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
      "valor": ' R\$ 869,90',
      "nome": "Filtro de água Consul",
      "imagem": 'assets/images/filtro_agua.png',
      "quantidadeEstrelas": 4,
      "parcelas": 12,
      "valorDaParcela": 869.90 / 12,
      "descricao":
          "Purificador de água Consul refrigerado, com proteção antibactérias com refil troca fácil e sistema de proteção antibactérias; Filtragem classe A Água pura sempre Proteção antibactérias",
      "detalhes":
          "Marca | Consul \n  Dimensões | 28L x 25W x 33H centímetros \n  Material | Plástico   \n   Capacidade | 1,5 lts",
    },
    {
      "valor": ' R\$ 429,00',
      "nome": "Alexa Echo Dot",
      "imagem": 'assets/images/alexa-echo.png',
      "quantidadeEstrelas": 4,
      "parcelas": 12,
      "valorDaParcela": 429.00 / 12,
      "descricao":
          "A Echo Dot é a versão 'mini' da Amazon Echo, assistente virtual da fabricante. O gadget funciona com a assistente de voz Alexa, respondendo a comandos, reproduzindo músicas e interagindo com o usuário. Por meio do dispositivo, é possível pedir um Uber, uma pizza, controlar aparelhos conectados, entre outras funções.",
      "detalhes":
          "Tamanho | 100 mm x 100 mm x 89 mm \n Peso | 304 gramas \n Geração | Novo Echo Dot 5ª geração (2022)  \n   Compatibilidade | Wifi, Bluetooth Low Energy e Matter.",
    },
    {
      "valor": ' R\$ 7.220,66',
      "nome": "Drone Dji Mini 3 Pro",
      "imagem": 'assets/images/drone-dji.png',
      "quantidadeEstrelas": 4,
      "parcelas": 12,
      "valorDaParcela": 7220.66 / 12,
      "descricao":
          "O DJI Mini 3 é um drone com câmera super compacto, leve e pronto para cada aventura. Conta com duração prolongada da bateria, gravando vídeos incríveis em HDR em 4K capazes de capturar cores e detalhes vibrantes, além de recursos como Gravação Vertical, criando cenas incríveis para as redes sociais. Seja ao passear pela praia, em uma viagem de fim de semana ou de um mês, esteja sempre pronto para capturar cada detalhe.",
      "detalhes":
          "Marca | DJI \n  Modelo | DJI MINI3PSC \n  Faixa Etária | Adulto",
    },
    {
      "valor": ' R\$ 1.069,00',
      "nome": "Purificador De Água Electrolux",
      "imagem": 'assets/images/purificador-agua.png',
      "quantidadeEstrelas": 4,
      "parcelas": 12,
      "valorDaParcela": 1.069 / 12,
      "descricao":
          "Filtragem Eficiente: moderno e eficiente Filtro Acqua Clean. Filtro com Luz UV: responsável por matar 99% dos germes e bactérias contidos na água. Durabilidade e praticidade: além de durar muito tempo, o filtro aciona um sinal automático quando precisar ser trocado. Modernidade: o purificador possui painel Blue Touch, sensível ao toque. Três temperaturas de água: natural, fria ou gelada.",
      "detalhes":
          "Marca | Electrolux \n  Dimensões | 31,4L x 25W x 35,8H centímetros \n  Material | Plástico  \n   Capacidade | 800 Milliliters",
    },
    {
      "valor": ' R\$ 399,00',
      "nome": "Fone De Ouvido Jbl Tune",
      "imagem": 'assets/images/Headphone-Tune-JBL.png',
      "quantidadeEstrelas": 4,
      "parcelas": 12,
      "valorDaParcela": 399 / 12,
      "descricao":
          "JBL PURE BASS. Há mais de 75 anos, a JBL desenvolve o som preciso e impressionante encontrado em grandes locais de evento do mundo todo. Esses fones de ouvido reproduzem o inconfundível som JBL com seus graves profundos e poderosos.",
      "detalhes":
          "Marca | JBL \n  Modelo | JBLT710BTWHT \n  Cor | Branco   \n   Tecnologia de Conectividade | Sem fio",
    },
    {
      "valor": ' R\$ 552,92',
      "nome": "Smartwatch Amazfit Gts 4 Mini",
      "imagem": 'assets/images/relogio-amazfit.png',
      "quantidadeEstrelas": 4,
      "parcelas": 12,
      "valorDaParcela": 552.92 / 12,
      "descricao":
          "Algoritmo de status de treino PeakBeats; Mais de 120 modos esportivos e reconhecimento inteligente; Sistema de Avaliação de Saúde PAI; Posicionamento Global Forte e Preciso",
      "detalhes":
          "Marca | Amazfit \n Fabricante | Amazfit   \n Modelo | 23840 \n  Número da peça | 9-GTS 2 Mini Black   \n   Tipo Do Produto | Esporte   \n   RAM |  1gb",
    },
    {
      "valor": ' R\$ 538,90',
      "nome": "Robô Aspirador Mars",
      "imagem": 'assets/images/robo-aspirador.png',
      "quantidadeEstrelas": 4,
      "parcelas": 12,
      "valorDaParcela": 538.9 / 12,
      "descricao":
          "ASPIRADOR ROBÔ MARS BIVOLT VARRE, ASPIRA E PASSA PANO, sistema anti-quedas, autonomia de 2 horas, 3 funções pré-programadas, ideal para pets. Laminados. Contém 2 escovas laterais que trabalham simultaneamente! Produto ideal para quem tem pets, pois ele também irá aspirar todo o pelo no chão.",
      "detalhes":
          "Marca | Multilaser \n  Cor | Vermelho  \n   Tipo Do Produto | Limpeza",
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
            opcaoSelecionadaFuncao: widget.opcaoSelecionadaFuncao,
            valor: list[index]["valor"],
            nome: list[index]["nome"],
            imagem: list[index]["imagem"],
            quantidadeEstrelas: list[index]["quantidadeEstrelas"],
            parcelas: list[index]["parcelas"],
            valorDaParcela: list[index]["valorDaParcela"],
            descricao: list[index]["descricao"],
            detalhes: list[index]["detalhes"],
          );
        },
      ),
    );
  }
}
