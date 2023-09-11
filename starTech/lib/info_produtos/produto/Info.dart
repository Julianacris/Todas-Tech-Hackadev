import 'package:flutter/material.dart';

class Info extends StatefulWidget {
  final String imagem;
  final String nome;
  final String preco;
  final int quantidadeEstrelas;

  const Info({
    super.key,
    required this.imagem,
    required this.nome,
    required this.preco,
    required this.quantidadeEstrelas,
  });

  @override
  State<StatefulWidget> createState() {
    return InfoState();
  }
}

class InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Container(
        width: 350,
        height: 450,
        decoration: BoxDecoration(
          color: Colors.pink[100],
          borderRadius: BorderRadius.circular(20),
          border: Border.all(style: BorderStyle.none),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              widget.imagem, // Caminho para a imagem local
              width: 250, // Largura da imagem
              height: 250, // Altura da imagem
              //fit: BoxFit.cover, // Ajuste da imagem
            ),
            const SizedBox(
                height: 10.0), // Espaçamento vertical entre a imagem e o texto
            Text(
              widget.nome,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 25, // Tamanho da fonte do texto
                color: Colors.black,

                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(
              height: 10.0,
            ),

            Container(
              height: 35,
              width: 180,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 99, 21, 46),
                  borderRadius: BorderRadius.circular(30)),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  widget.preco,
                  style: const TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),

            const SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  widget.quantidadeEstrelas >= 1
                      ? Icons.star
                      : Icons.star_border,
                  color: Color.fromARGB(255, 99, 21, 46),
                ),
                Icon(
                  widget.quantidadeEstrelas >= 2
                      ? Icons.star
                      : Icons.star_border,
                  color: Color.fromARGB(255, 99, 21, 46),
                ),
                Icon(
                  widget.quantidadeEstrelas >= 3
                      ? Icons.star
                      : Icons.star_border,
                  color: Color.fromARGB(255, 99, 21, 46),
                ),
                Icon(
                  widget.quantidadeEstrelas >= 4
                      ? Icons.star
                      : Icons.star_border,
                  color: Color.fromARGB(255, 99, 21, 46),
                ),
                Icon(
                  widget.quantidadeEstrelas >= 5
                      ? Icons.star
                      : Icons.star_border,
                  color: Color.fromARGB(255, 99, 21, 46),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
