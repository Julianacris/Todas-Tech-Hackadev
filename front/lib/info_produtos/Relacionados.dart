// Aqui vai ficar a parte dos produtos relacionados - Relacionados
import 'package:flutter/material.dart';
import 'package:hackadev/widgets/produtosRelacionados.dart';

class Relacionados extends StatefulWidget {
  final Function opcaoSelecionadaFuncao;
  const Relacionados({super.key, required this.opcaoSelecionadaFuncao});

  @override
  State<StatefulWidget> createState() {
    return RelacionadosState();
  }
}

class RelacionadosState extends State<Relacionados> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          produtosRelacionados(
            opcaoSelecionadaFuncao: widget.opcaoSelecionadaFuncao,
            preco: ' R\$ 4.249,00',
            nome: "Iphone 13 128gb Azul",
            pathImagem: 'assets/images/iphone-azul.png',
            quantidadeEstrelas: 5,
            quantidadeMaxParcelas: 7,
            valorDaParcela: 4249 / 7,
            descricaoLonga:
                "Tela Super Retina XDR de 6,1 polegadas, o modo cinematic adiciona profundidade de campo rasa e muda o foco automaticamente em seus vídeos, sistema avançado de câmera dupla com câmeras Wide e Ultra Wide de 12MP; Estilos fotográficos, Smart HDR 4, modo noturno, gravação 4K Dolby Vision HDR, câmera frontal TrueDepth de 12 MP com modo noturno, gravação 4K Dolby Vision HDR, chip biônico A15 para desempenho ultrarrápido",
            detalhesTecnicos:
                'Marca | Apple \n  Modelo | IPhone 13 \n   Sistema Operacional | IOS 14   \n   Tecnologia Celular |  5G',
          ),
          produtosRelacionados(
            opcaoSelecionadaFuncao: widget.opcaoSelecionadaFuncao,
            preco: ' R\$ 7.220,66',
            nome: "Drone Dji Mini 3 Pro",
            pathImagem: 'assets/images/drone-dji.png',
            quantidadeEstrelas: 4,
            quantidadeMaxParcelas: 12,
            valorDaParcela: 7220.66 / 12,
            descricaoLonga:
                "O DJI Mini 3 é um drone com câmera super compacto, leve e pronto para cada aventura. Conta com duração prolongada da bateria, gravando vídeos incríveis em HDR em 4K capazes de capturar cores e detalhes vibrantes, além de recursos como Gravação Vertical, criando cenas incríveis para as redes sociais. Seja ao passear pela praia, em uma viagem de fim de semana ou de um mês, esteja sempre pronto para capturar cada detalhe.",
            detalhesTecnicos:
                'Marca | DJI \n  Modelo | DJI MINI3PSC \n  Faixa Etária | Adulto',
          ),
          produtosRelacionados(
            opcaoSelecionadaFuncao: widget.opcaoSelecionadaFuncao,
            preco: ' R\$ 3.858,57',
            nome: "Smartphone Motorola Edge 30 Ultra",
            pathImagem: 'assets/images/celular-motorola.png',
            quantidadeEstrelas: 2,
            quantidadeMaxParcelas: 8,
            valorDaParcela: 3858.57 / 8,
            descricaoLonga:
                "A linha Edge da Motorola traz o aparelho 30 Ultra com memória de 256GB para você guardar documentos importantes, fotos, vídeos e lembranças inesquecíveis. Seu processador Octa-Core Snapdragon 8+ Gen 1 e sua memória RAM de 12GB + Boost permite que o smartphone funcione da melhor maneira possível e com ótima fluidez. Fique sempre conectado com a tecnologia 5G Dual Chip. A tela pOLED de 6,7' FHD+ 144Hz traz uma experiência de visualização excelente, seja ao ver seus vídeos, fotos, filmes e séries, com a câmera traseira tripla de 200MP OIS + 50MP + 12MP. Ela permite que você registre fotos maravilhosas.",
            detalhesTecnicos:
                'Marca | Motorola \n Tipo de Aparelho | Smartphone   \n Série | Edge 30 Ultra 5G \n  Quantidade de Chip | 2 Chips   \n   RAM |  12.0GB',
          ),
          produtosRelacionados(
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
          produtosRelacionados(
            opcaoSelecionadaFuncao: widget.opcaoSelecionadaFuncao,
            preco: ' R\$ 429,00',
            nome: "Alexa Echo Dot",
            pathImagem: 'assets/images/alexa-echo.png',
            quantidadeEstrelas: 4,
            quantidadeMaxParcelas: 12,
            valorDaParcela: 429.00 / 12,
            descricaoLonga:
                "A Echo Dot é a versão 'mini' da Amazon Echo, assistente virtual da fabricante. O gadget funciona com a assistente de voz Alexa, respondendo a comandos, reproduzindo músicas e interagindo com o usuário. Por meio do dispositivo, é possível pedir um Uber, uma pizza, controlar aparelhos conectados, entre outras funções.",
            detalhesTecnicos:
                'Tamanho | 100 mm x 100 mm x 89 mm \n Peso | 304 gramas \n Geração | Novo Echo Dot 5ª geração (2022)  \n   Compatibilidade | Wifi, Bluetooth Low Energy e Matter',
          ),
          produtosRelacionados(
            opcaoSelecionadaFuncao: widget.opcaoSelecionadaFuncao,
            preco: ' R\$ 1.069,00',
            nome: "Purificador De Água Electrolux",
            pathImagem: 'assets/images/purificador-agua.png',
            quantidadeEstrelas: 4,
            quantidadeMaxParcelas: 12,
            valorDaParcela: 1.069 / 12,
            descricaoLonga:
                "Filtragem Eficiente: moderno e eficiente Filtro Acqua Clean. Filtro com Luz UV: responsável por matar 99% dos germes e bactérias contidos na água. Durabilidade e praticidade: além de durar muito tempo, o filtro aciona um sinal automático quando precisar ser trocado. Modernidade: o purificador possui painel Blue Touch, sensível ao toque. Três temperaturas de água: natural, fria ou gelada.",
            detalhesTecnicos:
                'Marca | Electrolux \n  Dimensões | 31,4L x 25W x 35,8H centímetros \n  Material | Plástico  \n   Capacidade | 800 Milliliters',
          ),
        ],
      ),
    );
  }
}
