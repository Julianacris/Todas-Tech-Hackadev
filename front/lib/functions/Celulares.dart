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
              "A linha Edge da Motorola traz o aparelho 30 Ultra com memória de 256GB para você guardar documentos importantes, fotos, vídeos e lembranças inesquecíveis. Seu processador Octa-Core Snapdragon 8+ Gen 1 e sua memória RAM de 12GB + Boost permite que o smartphone funcione da melhor maneira possível e com ótima fluidez. Fique sempre conectado com a tecnologia 5G Dual Chip. A tela pOLED de 6,7' FHD+ 144Hz traz uma experiência de visualização excelente, seja ao ver seus vídeos, fotos, filmes e séries, com a câmera traseira tripla de 200MP OIS + 50MP + 12MP. Ela permite que você registre fotos maravilhosas.",
          detalhesTecnicos:
              'Marca | Motorola \n Tipo de Aparelho | Smartphone   \n Série | Edge 30 Ultra 5G \n  Quantidade de Chip | 2 Chips   \n   RAM |  12.0GB',
        ),
        Produto(
          preco: ' R\$ 3.698,99',
          nome: "Iphone 12 64gb",
          pathImagem: 'assets/images/iphone-branco.png',
          quantidadeEstrelas: 4,
          quantidadeMaxParcelas: 8,
          valorDaParcela: 3698.99 / 8,
          descricaoLonga:
              "IPhone 12. Tela Super Retina XDR brilhante de 6,1 polegadas*. Ceramic Shield, que é quatro vezes mais resistente a quedas**. Fotos surpreendentes em pouca luz com o modo Noite em todas as câmeras. Reprodução, edição e gravação de vídeos em Dolby Vision com qualidade de cinema.",
          detalhesTecnicos:
              'Marca | Apple \n Referência | MGJ53BR/A   \n Modelo | iPhone 12 64GB \n  Linha | iPhone 12 \n   Armazenamento Interno | 64GB   \n   Tecnologia |  4G/5G',
        ),
        Produto(
          preco: ' R\$ 4.249,00',
          nome: "Iphone 13 128gb Amarelo",
          pathImagem: 'assets/images/iphone-amarelo.png',
          quantidadeEstrelas: 3,
          quantidadeMaxParcelas: 8,
          valorDaParcela: 4249 / 8,
          descricaoLonga:
              "Tela Super Retina XDR de 6,1 polegadas, o modo cinematic adiciona profundidade de campo rasa e muda o foco automaticamente em seus vídeos, sistema avançado de câmera dupla com câmeras Wide e Ultra Wide de 12MP; Estilos fotográficos, Smart HDR 4, modo noturno, gravação 4K Dolby Vision HDR, câmera frontal TrueDepth de 12 MP com modo noturno, gravação 4K Dolby Vision HDR, chip biônico A15 para desempenho ultrarrápido",
          detalhesTecnicos:
              'Marca | Apple \n  Modelo | IPhone 13 \n  Sistema Operacional | IOS 14   \n   Tecnologia Celular | 5G',
        ),
        Produto(
          preco: ' R\$ 2.499,00',
          nome: "Samsung Galaxy S22",
          pathImagem: 'assets/images/celular-samsung.png',
          quantidadeEstrelas: 5,
          quantidadeMaxParcelas: 8,
          valorDaParcela: 2499 / 8,
          descricaoLonga:
              "128GB de Memória Interna(*) e 8GB RAM, bateria de 3700mAh com Carregamento Rápido de 25W, câmera Tripla Traseira de 50MP OIS (Wide) + 10MP OIS (Telephoto) + 12MP (Ultra-Wide) de Selfie de 10MP, tela Infinita de 6.1' 48-120Hz,Leitor de Digital Ultrassônico na tela IP68, Wireless Power Share",
          detalhesTecnicos:
              'Marca | SANSUNG \n  Modelo | Galaxy S22 5G \n   Sistema Operacional | Android 12.0   \n   Tecnologia Celular |  5G',
        ),
        Produto(
          preco: ' R\$ 3.779,10',
          nome: "Samsung Galaxy S22 Ultra",
          pathImagem: 'assets/images/celular-samsung-s22.png',
          quantidadeEstrelas: 1,
          quantidadeMaxParcelas: 6,
          valorDaParcela: 3779.10,
          descricaoLonga:
              "256GB de Memória Interna(*) e 12GB RAM bateria de 5000mAh, câmera Quádrupla Traseira de 108MP OIS (Wide) + 10MP OIS (Zoom 3x) + 12MP (Ultra-Wide) + 10MP OIS (Zoom 10x) e Selfie de 40MP, tela Infinita de 6.8' 1-120Hz, eitor de Digital Ultrassônico na tela, IP68, Wireless Power Share",
          detalhesTecnicos:
              'Marca | SANSUNG \n  Modelo | Galaxy S22 Ultra 5G \n   Sistema Operacional | Android 12.0   \n   Tecnologia Celular |  5G',
        ),
        Produto(
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
      ],
    );
  }
}
