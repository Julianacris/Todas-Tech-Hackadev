//GridView que vai conter as Tvs

// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:hackadev/widgets/produto.dart';

class Tvs extends StatefulWidget {
  final Function opcaoSelecionadaFuncao;
  const Tvs({super.key, required this.opcaoSelecionadaFuncao});

  @override
  State<StatefulWidget> createState() {
    return TvsState();
  }
}

class TvsState extends State<Tvs> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: <Widget>[
        Produto(
          opcaoSelecionadaFuncao: widget.opcaoSelecionadaFuncao,
          preco: ' R\$ 1.399,00',
          nome: "Smart Tv 40pol Philco Led",
          pathImagem: 'assets/images/tvSmart-philco.png',
          quantidadeEstrelas: 4,
          quantidadeMaxParcelas: 24,
          valorDaParcela: 58.29,
          descricaoLonga:
              "Menu nos idiomas Português e Inglês Busca automática de canais Recepção em ATV, DTV e CATV Conversor digital integrado Equalizadores de som e imagem predefinidos Ajustes de temperatura de cor Nivelador automático de volume Recursos: MUTE, SLEEP, APP STORE, CLOSED CAPTION, GUIDE, INFO, RELÓGIO, ZOOM, HDMI ARC, T-LINK (HDMI-CEC)",
          detalhesTecnicos:
              " Marca | 	PHILCO \n Polegadas | 40   \n Modelo | PTV40G7ER2CPBLF \n  Resolução | Full HD (1920x1080)  \n   Características | Smart   \n   Voltagem | Bivolt",
        ),
        Produto(
          opcaoSelecionadaFuncao: widget.opcaoSelecionadaFuncao,
          preco: ' R\$ 2.849,00',
          nome: "Smart Tv LG 55pol Led 4K UHD",
          pathImagem: 'assets/images/tv-Lg.png',
          quantidadeEstrelas: 3,
          quantidadeMaxParcelas: 24,
          valorDaParcela: 2849 / 24,
          descricaoLonga:
              "Seu entretenimento e o de sua família estão garantidos! Com uma incrível tela de 55 polegadas, você tem resolução 4k e tecnologia LED, além do som de 20W com 2 canais e AI Sound, tudo isso para você curtir da melhor forma possível, como se estivesse em um cinema.",
          detalhesTecnicos:
              'Marca | LG \n Tamanho | 55 Polegadas   \n Modelo | 55UQ801CB. BWZ \n  Resolução | 4K Ultra HD   \n   Tecnologia | LED',
        ),
        Produto(
          opcaoSelecionadaFuncao: widget.opcaoSelecionadaFuncao,
          preco: ' R\$ 2.089,00',
          nome: "Tv Philips 50pol Smart 4K",
          pathImagem: 'assets/images/tvSmar-philips.png',
          quantidadeEstrelas: 3,
          quantidadeMaxParcelas: 24,
          valorDaParcela: 2089 / 24,
          descricaoLonga:
              "A Philips PUG7406 pode ser controlada através de comandos de voz, por meio do Google Assistente. O controle dela possui microfone integrado, que pode ser usado para acionar o serviço de assitente, ajustando volume, mudando de canal, abrindo um aplicativo específico e realizando diversas outras tarefas.",
          detalhesTecnicos:
              'Marca | Philips \n Cor | Preta   \n  Tipo de Tela | LED Ultra HD 4K \n  Tamanho | 50 Polegadas   \n   Garantia | 12 meses   \n   Voltagem |  Bivolt',
        ),
        Produto(
          opcaoSelecionadaFuncao: widget.opcaoSelecionadaFuncao,
          preco: ' R\$ 1.089,00',
          nome: "Smart Tv Monitor 24pol Led",
          pathImagem: 'assets/images/tvSmart-Lg.png',
          quantidadeEstrelas: 2,
          quantidadeMaxParcelas: 24,
          valorDaParcela: 1089 / 24,
          descricaoLonga:
              "Smart TV webOS 3.5: o novo sistema webOS 3.5 vem com tudo para você aproveitar a internet ao máximo. Navegue por sites, assista séries e vídeos em streaming, acesse aplicativos e muito mais. No trabalho ou lazer você vai ter uma verdadeira experiência digital",
          detalhesTecnicos:
              'Marca | LG \n Cor | Preta   \n Tamanho da Tela | 23.6 \n  Tecnologia do Visor | LED   \n   Resolução | HD',
        ),
        Produto(
          opcaoSelecionadaFuncao: widget.opcaoSelecionadaFuncao,
          preco: ' R\$ 4.986,00',
          nome: "Smart Tv Samsung 55pol Neo Qled",
          pathImagem: 'assets/images/tv-samsung-neo.png',
          quantidadeEstrelas: 4,
          quantidadeMaxParcelas: 24,
          valorDaParcela: 4986 / 24,
          descricaoLonga:
              "Neo QLED. O poder do Mini LED: Uma revolução no brilho e contraste, processador Neural Quantum 4K: Inteligência Artificial e 20 redes neurais para upscaling de resolução, dolby Atmos e Som em Movimento: Um nível a mais na sua experiência sonora, Motion Xcelerator Turbo+: Ultraperformance no jogo, FreeSync Premium Pro: Jogue sem esforço, Samsung Gaming Hub​: Jogue seus games preferidos direto na sua TV através da nuvem, sem precisar de console",
          detalhesTecnicos:
              'Marca | Sansung \n Tamanho da Tela | 55   \n Modelo | QN55QN85BAGXZD \n  Tecnologia do visor | Neo QLED   \n   Caractríesticas Especiais | Plana   \n   Resolução |  4K',
        ),
        Produto(
          opcaoSelecionadaFuncao: widget.opcaoSelecionadaFuncao,
          preco: ' R\$ 5.823,90',
          nome: "Smart Tv 65pol Tcl Qled",
          pathImagem: 'assets/images/tv-tcl.png',
          quantidadeEstrelas: 5,
          quantidadeMaxParcelas: 36,
          valorDaParcela: 5823.90 / 36,
          descricaoLonga:
              "A Smart TV C835, da TCL, é uma QLED Mini LED, evolução do painel de LCD padrão e do Quantum DOT, que proporciona mais precisão nos detalhes das imagens, com contraste acentuado e elevado nível de brilho.",
          detalhesTecnicos:
              'Marca | TCL \n Tamanho da Tela | 65   \n  Tecnologia do visor | QLED, 4K, UHD \n  Resolução | 4K  \n   Modelo | 75C835   \n   Ano |  2022',
        ),
      ],
    );
  }
}
