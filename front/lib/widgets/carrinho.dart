import 'package:flutter/material.dart';

class Carrinho extends StatefulWidget {
  const Carrinho({super.key});

  @override
  State<StatefulWidget> createState() {
    return ConteudoCarrinho();
  }
}

class ConteudoCarrinho extends State {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Esta é a nova página!'),
      ),
    );
  }
}
