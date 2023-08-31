// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:hackadev/widgets/produto.dart';

class TodosProd extends StatefulWidget {
  const TodosProd({super.key});

  @override
  State<StatefulWidget> createState() {
    return TodosProdState();
  }
}

class TodosProdState extends State {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: const <Widget>[
            Produto(preco: ' R\$ 10,00', nome: "iPhone1", pathImagem: 'assets/images/imagem1.png'),
            Produto(preco: ' R\$ 20,00', nome: "Teste", pathImagem: 'assets/images/imagem2.webp'),
          ],
        );
  }
}
