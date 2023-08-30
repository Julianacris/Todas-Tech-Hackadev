// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Produto extends StatefulWidget {
  const Produto({super.key});

  @override
  State<StatefulWidget> createState() {
    return ProdutoState();
  }
}

class ProdutoState extends State {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: Colors.pink[100], borderRadius: BorderRadius.circular(12)),
          child: Column(
            children: [
              Container(
                height: 200.0,
                 width: 200.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/imagem1.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                child: const Text("Teste"),
              ),
              Container(
                height: 15.0,
                width: 100.0,
                decoration: BoxDecoration(
                  color: Colors.pink[800],
                  borderRadius: BorderRadius.circular(15)
                ),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text("R\$ 1000,00"), 
                )
              )
            ],
          ),
        ),
      ],
    );
  }
}
