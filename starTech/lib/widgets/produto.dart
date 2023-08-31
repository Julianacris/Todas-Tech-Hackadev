// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Produto extends StatefulWidget {
  final String preco;
  final String nome;
  final String pathImagem;

  const Produto(
      {super.key,
      required this.preco,
      required this.nome,
      required this.pathImagem});

  @override
  State<StatefulWidget> createState() {
    return ProdutoState();
  }
}

class ProdutoState extends State<Produto> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.pink.shade100, width: 8)),
          child: Column(
            children: [
              Container(
                child: Text(widget.nome,
                    style: const TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold)),
              ),
              Container(
                height: 180.0,
                width: 180.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(widget.pathImagem),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                  height: 15.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                      color: Colors.pink[800],
                      borderRadius: BorderRadius.circular(15)),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(widget.preco),
                  ))
            ],
          ),
        ),
      ],
    );
  }
}
