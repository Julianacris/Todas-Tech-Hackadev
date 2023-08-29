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
            height: 30,
            width: 30,
            decoration: const BoxDecoration(
              color:  Color.fromARGB(255, 154, 42, 164),
            ),
          )
        ],
      );
  }
}
