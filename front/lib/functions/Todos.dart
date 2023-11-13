//GridView que vai conter todos os produtos

// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:hackadev/widgets/produto.dart';

class TodosProd extends StatefulWidget {
  final Function opcaoSelecionadaFuncao;
  const TodosProd({super.key, required this.opcaoSelecionadaFuncao});

  @override
  State<StatefulWidget> createState() {
    return TodosProdState();
  }
}

class TodosProdState extends State<TodosProd> {
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
          valor: ' R\$ 1.399,00',
          nome: "Smart Tv 40pol Philco Led",
          imagem: 'assets/images/tvSmart-philco.png',
          quantidadeEstrelas: 4,
          parcelas: 24,
          valorDaParcela: 58.29,
          descricao:
              "Menu nos idiomas Português e Inglês Busca automática de canais Recepção em ATV, DTV e CATV Conversor digital integrado Equalizadores de som e imagem predefinidos Ajustes de temperatura de cor Nivelador automático de volume Recursos: MUTE, SLEEP, APP STORE, CLOSED CAPTION, GUIDE, INFO, RELÓGIO, ZOOM, HDMI ARC, T-LINK (HDMI-CEC)",
          detalhes:
              " Marca | 	PHILCO \n Polegadas | 40   \n Modelo | PTV40G7ER2CPBLF \n  Resolução | Full HD (1920x1080)  \n   Características | Smart   \n   Voltagem | Bivolt",
        ),
        Produto(
          opcaoSelecionadaFuncao: widget.opcaoSelecionadaFuncao,
          valor: ' R\$ 2.849,00',
          nome: "Smart Tv LG 55pol Led 4K UHD",
          imagem: 'assets/images/tv-Lg.png',
          quantidadeEstrelas: 3,
          parcelas: 24,
          valorDaParcela: 2849 / 24,
          descricao:
              "Seu entretenimento e o de sua família estão garantidos! Com uma incrível tela de 55 polegadas, você tem resolução 4k e tecnologia LED, além do som de 20W com 2 canais e AI Sound, tudo isso para você curtir da melhor forma possível, como se estivesse em um cinema.",
          detalhes:
              'Marca | LG \n Tamanho | 55 Polegadas   \n Modelo | 55UQ801CB. BWZ \n  Resolução | 4K Ultra HD   \n   Tecnologia | LED',
        ),
        Produto(
          opcaoSelecionadaFuncao: widget.opcaoSelecionadaFuncao,
          valor: ' R\$ 2.089,00',
          nome: "Tv Philips 50pol Smart 4K",
          imagem: 'assets/images/tvSmar-philips.png',
          quantidadeEstrelas: 3,
          parcelas: 24,
          valorDaParcela: 2089 / 24,
          descricao:
              "A Philips PUG7406 pode ser controlada através de comandos de voz, por meio do Google Assistente. O controle dela possui microfone integrado, que pode ser usado para acionar o serviço de assitente, ajustando volume, mudando de canal, abrindo um aplicativo específico e realizando diversas outras tarefas.",
          detalhes:
              'Marca | Philips \n Cor | Preta   \n  Tipo de Tela | LED Ultra HD 4K \n  Tamanho | 50 Polegadas   \n   Garantia | 12 meses   \n   Voltagem |  Bivolt',
        ),
        Produto(
          opcaoSelecionadaFuncao: widget.opcaoSelecionadaFuncao,
          valor: ' R\$ 1.089,00',
          nome: "Smart Tv Monitor 24pol Led",
          imagem: 'assets/images/tvSmart-Lg.png',
          quantidadeEstrelas: 2,
          parcelas: 24,
          valorDaParcela: 1089 / 24,
          descricao:
              "Smart TV webOS 3.5: o novo sistema webOS 3.5 vem com tudo para você aproveitar a internet ao máximo. Navegue por sites, assista séries e vídeos em streaming, acesse aplicativos e muito mais. No trabalho ou lazer você vai ter uma verdadeira experiência digital",
          detalhes:
              'Marca | LG \n Cor | Preta   \n Tamanho da Tela | 23.6 \n  Tecnologia do Visor | LED   \n   Resolução | HD',
        ),
        Produto(
          opcaoSelecionadaFuncao: widget.opcaoSelecionadaFuncao,
          valor: ' R\$ 4.986,00',
          nome: "Smart Tv Samsung 55pol Neo Qled",
          imagem: 'assets/images/tv-samsung-neo.png',
          quantidadeEstrelas: 4,
          parcelas: 24,
          valorDaParcela: 4986 / 24,
          descricao:
              "Neo QLED. O poder do Mini LED: Uma revolução no brilho e contraste, processador Neural Quantum 4K: Inteligência Artificial e 20 redes neurais para upscaling de resolução, dolby Atmos e Som em Movimento: Um nível a mais na sua experiência sonora, Motion Xcelerator Turbo+: Ultraperformance no jogo, FreeSync Premium Pro: Jogue sem esforço, Samsung Gaming Hub​: Jogue seus games preferidos direto na sua TV através da nuvem, sem precisar de console",
          detalhes:
              'Marca | Sansung \n Tamanho da Tela | 55   \n Modelo | QN55QN85BAGXZD \n  Tecnologia do visor | Neo QLED   \n   Caractríesticas Especiais | Plana   \n   Resolução |  4K',
        ),
        Produto(
          opcaoSelecionadaFuncao: widget.opcaoSelecionadaFuncao,
          valor: ' R\$ 5.823,90',
          nome: "Smart Tv 65pol Tcl Qled",
          imagem: 'assets/images/tv-tcl.png',
          quantidadeEstrelas: 5,
          parcelas: 36,
          valorDaParcela: 5823.90 / 36,
          descricao:
              "A Smart TV C835, da TCL, é uma QLED Mini LED, evolução do painel de LCD padrão e do Quantum DOT, que proporciona mais precisão nos detalhes das imagens, com contraste acentuado e elevado nível de brilho.",
          detalhes:
              'Marca | TCL \n Tamanho da Tela | 65   \n  Tecnologia do visor | QLED, 4K, UHD \n  Resolução | 4K  \n   Modelo | 75C835   \n   Ano |  2022',
        ),
        Produto(
          opcaoSelecionadaFuncao: widget.opcaoSelecionadaFuncao,
          valor: ' R\$ 3.858,57',
          nome: "Smartphone Motorola Edge 30 Ultra",
          imagem: 'assets/images/celular-motorola.png',
          quantidadeEstrelas: 2,
          parcelas: 8,
          valorDaParcela: 3858.57 / 8,
          descricao:
              "A linha Edge da Motorola traz o aparelho 30 Ultra com memória de 256GB para você guardar documentos importantes, fotos, vídeos e lembranças inesquecíveis. Seu processador Octa-Core Snapdragon 8+ Gen 1 e sua memória RAM de 12GB + Boost permite que o smartphone funcione da melhor maneira possível e com ótima fluidez. Fique sempre conectado com a tecnologia 5G Dual Chip. A tela pOLED de 6,7' FHD+ 144Hz traz uma experiência de visualização excelente, seja ao ver seus vídeos, fotos, filmes e séries, com a câmera traseira tripla de 200MP OIS + 50MP + 12MP. Ela permite que você registre fotos maravilhosas.",
          detalhes:
              'Marca | Motorola \n Tipo de Aparelho | Smartphone   \n Série | Edge 30 Ultra 5G \n  Quantidade de Chip | 2 Chips   \n   RAM |  12.0GB',
        ),
        Produto(
          opcaoSelecionadaFuncao: widget.opcaoSelecionadaFuncao,
          valor: ' R\$ 3.698,99',
          nome: "Iphone 12 64gb",
          imagem: 'assets/images/iphone-branco.png',
          quantidadeEstrelas: 4,
          parcelas: 8,
          valorDaParcela: 3698.99 / 8,
          descricao:
              "IPhone 12. Tela Super Retina XDR brilhante de 6,1 polegadas*. Ceramic Shield, que é quatro vezes mais resistente a quedas**. Fotos surpreendentes em pouca luz com o modo Noite em todas as câmeras. Reprodução, edição e gravação de vídeos em Dolby Vision com qualidade de cinema.",
          detalhes:
              'Marca | Apple \n Referência | MGJ53BR/A   \n Modelo | iPhone 12 64GB \n  Linha | iPhone 12 \n   Armazenamento Interno | 64GB   \n   Tecnologia |  4G/5G',
        ),
        Produto(
          opcaoSelecionadaFuncao: widget.opcaoSelecionadaFuncao,
          valor: ' R\$ 4.249,00',
          nome: "Iphone 13 128gb Amarelo",
          imagem: 'assets/images/iphone-amarelo.png',
          quantidadeEstrelas: 3,
          parcelas: 8,
          valorDaParcela: 4249 / 8,
          descricao:
              "Tela Super Retina XDR de 6,1 polegadas, o modo cinematic adiciona profundidade de campo rasa e muda o foco automaticamente em seus vídeos, sistema avançado de câmera dupla com câmeras Wide e Ultra Wide de 12MP; Estilos fotográficos, Smart HDR 4, modo noturno, gravação 4K Dolby Vision HDR, câmera frontal TrueDepth de 12 MP com modo noturno, gravação 4K Dolby Vision HDR, chip biônico A15 para desempenho ultrarrápido",
          detalhes:
              'Marca | Apple \n  Modelo | IPhone 13 \n  Sistema Operacional | IOS 14   \n   Tecnologia Celular | 5G',
        ),
        Produto(
          opcaoSelecionadaFuncao: widget.opcaoSelecionadaFuncao,
          valor: ' R\$ 2.499,00',
          nome: "Samsung Galaxy S22",
          imagem: 'assets/images/celular-samsung.png',
          quantidadeEstrelas: 5,
          parcelas: 8,
          valorDaParcela: 2499 / 8,
          descricao:
              "128GB de Memória Interna(*) e 8GB RAM, bateria de 3700mAh com Carregamento Rápido de 25W, câmera Tripla Traseira de 50MP OIS (Wide) + 10MP OIS (Telephoto) + 12MP (Ultra-Wide) de Selfie de 10MP, tela Infinita de 6.1' 48-120Hz,Leitor de Digital Ultrassônico na tela IP68, Wireless Power Share",
          detalhes:
              'Marca | SANSUNG \n  Modelo | Galaxy S22 5G \n   Sistema Operacional | Android 12.0   \n   Tecnologia Celular |  5G',
        ),
        Produto(
          opcaoSelecionadaFuncao: widget.opcaoSelecionadaFuncao,
          valor: ' R\$ 3.779,10',
          nome: "Samsung Galaxy S22 Ultra",
          imagem: 'assets/images/celular-samsung-s22.png',
          quantidadeEstrelas: 1,
          parcelas: 6,
          valorDaParcela: 3779.10,
          descricao:
              "256GB de Memória Interna(*) e 12GB RAM bateria de 5000mAh, câmera Quádrupla Traseira de 108MP OIS (Wide) + 10MP OIS (Zoom 3x) + 12MP (Ultra-Wide) + 10MP OIS (Zoom 10x) e Selfie de 40MP, tela Infinita de 6.8' 1-120Hz, eitor de Digital Ultrassônico na tela, IP68, Wireless Power Share",
          detalhes:
              'Marca | SANSUNG \n  Modelo | Galaxy S22 Ultra 5G \n   Sistema Operacional | Android 12.0   \n   Tecnologia Celular |  5G',
        ),
        Produto(
          opcaoSelecionadaFuncao: widget.opcaoSelecionadaFuncao,
          valor: ' R\$ 4.249,00',
          nome: "Iphone 13 128gb Azul",
          imagem: 'assets/images/iphone-azul.png',
          quantidadeEstrelas: 5,
          parcelas: 7,
          valorDaParcela: 4249 / 7,
          descricao:
              "Tela Super Retina XDR de 6,1 polegadas, o modo cinematic adiciona profundidade de campo rasa e muda o foco automaticamente em seus vídeos, sistema avançado de câmera dupla com câmeras Wide e Ultra Wide de 12MP; Estilos fotográficos, Smart HDR 4, modo noturno, gravação 4K Dolby Vision HDR, câmera frontal TrueDepth de 12 MP com modo noturno, gravação 4K Dolby Vision HDR, chip biônico A15 para desempenho ultrarrápido",
          detalhes:
              'Marca | Apple \n  Modelo | IPhone 13 \n   Sistema Operacional | IOS 14   \n   Tecnologia Celular |  5G',
        ),
        Produto(
          opcaoSelecionadaFuncao: widget.opcaoSelecionadaFuncao,
          valor: ' R\$ 869,90',
          nome: "Filtro de água Consul",
          imagem: 'assets/images/filtro_agua.png',
          quantidadeEstrelas: 4,
          parcelas: 12,
          valorDaParcela: 869.90 / 12,
          descricao:
              "Purificador de água Consul refrigerado, com proteção antibactérias com refil troca fácil e sistema de proteção antibactérias; Filtragem classe A Água pura sempre Proteção antibactérias",
          detalhes:
              'Marca | Consul \n  Dimensões | 28L x 25W x 33H centímetros \n  Material | Plástico   \n   Capacidade | 1,5 lts',
        ),
        Produto(
          opcaoSelecionadaFuncao: widget.opcaoSelecionadaFuncao,
          valor: ' R\$ 429,00',
          nome: "Alexa Echo Dot",
          imagem: 'assets/images/alexa-echo.png',
          quantidadeEstrelas: 4,
          parcelas: 12,
          valorDaParcela: 429.00 / 12,
          descricao:
              "A Echo Dot é a versão 'mini' da Amazon Echo, assistente virtual da fabricante. O gadget funciona com a assistente de voz Alexa, respondendo a comandos, reproduzindo músicas e interagindo com o usuário. Por meio do dispositivo, é possível pedir um Uber, uma pizza, controlar aparelhos conectados, entre outras funções.",
          detalhes:
              'Tamanho | 100 mm x 100 mm x 89 mm \n Peso | 304 gramas \n Geração | Novo Echo Dot 5ª geração (2022)  \n   Compatibilidade | Wifi, Bluetooth Low Energy e Matter.',
        ),
        Produto(
          opcaoSelecionadaFuncao: widget.opcaoSelecionadaFuncao,
          valor: ' R\$ 7.220,66',
          nome: "Drone Dji Mini 3 Pro",
          imagem: 'assets/images/drone-dji.png',
          quantidadeEstrelas: 4,
          parcelas: 12,
          valorDaParcela: 7220.66 / 12,
          descricao:
              "O DJI Mini 3 é um drone com câmera super compacto, leve e pronto para cada aventura. Conta com duração prolongada da bateria, gravando vídeos incríveis em HDR em 4K capazes de capturar cores e detalhes vibrantes, além de recursos como Gravação Vertical, criando cenas incríveis para as redes sociais. Seja ao passear pela praia, em uma viagem de fim de semana ou de um mês, esteja sempre pronto para capturar cada detalhe.",
          detalhes:
              'Marca | DJI \n  Modelo | DJI MINI3PSC \n  Faixa Etária | Adulto',
        ),
        Produto(
          opcaoSelecionadaFuncao: widget.opcaoSelecionadaFuncao,
          valor: ' R\$ 1.069,00',
          nome: "Purificador De Água Electrolux",
          imagem: 'assets/images/purificador-agua.png',
          quantidadeEstrelas: 4,
          parcelas: 12,
          valorDaParcela: 1.069 / 12,
          descricao:
              "Filtragem Eficiente: moderno e eficiente Filtro Acqua Clean. Filtro com Luz UV: responsável por matar 99% dos germes e bactérias contidos na água. Durabilidade e praticidade: além de durar muito tempo, o filtro aciona um sinal automático quando precisar ser trocado. Modernidade: o purificador possui painel Blue Touch, sensível ao toque. Três temperaturas de água: natural, fria ou gelada.",
          detalhes:
              'Marca | Electrolux \n  Dimensões | 31,4L x 25W x 35,8H centímetros \n  Material | Plástico  \n   Capacidade | 800 Milliliters',
        ),
        Produto(
          opcaoSelecionadaFuncao: widget.opcaoSelecionadaFuncao,
          valor: ' R\$ 399,00',
          nome: "Fone De Ouvido Jbl Tune",
          imagem: 'assets/images/Headphone-Tune-JBL.png',
          quantidadeEstrelas: 4,
          parcelas: 12,
          valorDaParcela: 399 / 12,
          descricao:
              "JBL PURE BASS. Há mais de 75 anos, a JBL desenvolve o som preciso e impressionante encontrado em grandes locais de evento do mundo todo. Esses fones de ouvido reproduzem o inconfundível som JBL com seus graves profundos e poderosos.",
          detalhes:
              'Marca | JBL \n  Modelo | JBLT710BTWHT \n  Cor | Branco   \n   Tecnologia de Conectividade | Sem fio',
        ),
        Produto(
          opcaoSelecionadaFuncao: widget.opcaoSelecionadaFuncao,
          valor: ' R\$ 552,92',
          nome: "Smartwatch Amazfit Gts 4 Mini",
          imagem: 'assets/images/relogio-amazfit.png',
          quantidadeEstrelas: 4,
          parcelas: 12,
          valorDaParcela: 552.92 / 12,
          descricao:
              "Algoritmo de status de treino PeakBeats; Mais de 120 modos esportivos e reconhecimento inteligente; Sistema de Avaliação de Saúde PAI; Posicionamento Global Forte e Preciso",
          detalhes:
              'Marca | Amazfit \n Fabricante | Amazfit   \n Modelo | 23840 \n  Número da peça | 9-GTS 2 Mini Black   \n   Tipo Do Produto | Esporte   \n   RAM |  1gb',
        ),
        Produto(
          opcaoSelecionadaFuncao: widget.opcaoSelecionadaFuncao,
          valor: ' R\$ 538,90',
          nome: "Robô Aspirador Mars",
          imagem: 'assets/images/robo-aspirador.png',
          quantidadeEstrelas: 4,
          parcelas: 12,
          valorDaParcela: 538.9 / 12,
          descricao:
              "ASPIRADOR ROBÔ MARS BIVOLT VARRE, ASPIRA E PASSA PANO, sistema anti-quedas, autonomia de 2 horas, 3 funções pré-programadas, ideal para pets. Laminados. Contém 2 escovas laterais que trabalham simultaneamente! Produto ideal para quem tem pets, pois ele também irá aspirar todo o pelo no chão.",
          detalhes:
              'Marca | Multilaser \n  Cor | Vermelho  \n   Tipo Do Produto | Limpeza',
        ),
      ],
    );
  }
}
