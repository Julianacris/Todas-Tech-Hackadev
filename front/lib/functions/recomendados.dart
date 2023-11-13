import 'package:flutter/material.dart';
import 'package:hackadev/widgets/produtosRecomendados.dart';

class Recomendados extends StatefulWidget {
  final Function opcaoSelecionadaFuncao;
  const Recomendados({super.key, required this.opcaoSelecionadaFuncao});

  @override
  State<StatefulWidget> createState() {
    return RecomendadosState();
  }
}

class RecomendadosState extends State<Recomendados> {
  List<dynamic> list = [
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
      "valor": ' R\$ 4.249,00',
      "nome": "Iphone 13 128gb Azul",
      "imagem": 'assets/images/iphone-azul.png',
      "quantidadeEstrelas": 5,
      "parcelas": 7,
      "valorDaParcela": 4249 / 7,
      "descricao":
          "Tela Super Retina XDR de 6,1 polegadas, o modo cinematic adiciona profundidade de campo rasa e muda o foco automaticamente em seus vídeos, sistema avançado de câmera dupla com câmeras Wide e Ultra Wide de 12MP; Estilos fotográficos, Smart HDR 4, modo noturno, gravação 4K Dolby Vision HDR, câmera frontal TrueDepth de 12 MP com modo noturno, gravação 4K Dolby Vision HDR, chip biônico A15 para desempenho ultrarrápido",
      "detalhes":
          'Marca | Apple \n  Modelo | IPhone 13 \n   Sistema Operacional | IOS 14   \n   Tecnologia Celular |  5G',
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
          return produtosRecomendados(
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
