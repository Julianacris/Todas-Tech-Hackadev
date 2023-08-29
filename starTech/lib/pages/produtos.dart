import 'package:flutter/material.dart';
import 'package:hackadev/widgets/produto.dart';

class Produtos extends StatefulWidget {
  const Produtos({super.key});

  @override
  State<StatefulWidget> createState() {
    return ProdutosState();
  }
}

class ProdutosState extends State {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: <Widget>[
        Produto(),
      ],
    );
  }
}
