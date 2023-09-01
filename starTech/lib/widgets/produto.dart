// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

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
          width: 200,
          height: 200,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color:const Color.fromARGB(255, 205, 0, 106), width: 2)),
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
                height: 120.0,
                width: 120.0,
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
                      color: const Color.fromARGB(255, 205, 0, 106),
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
