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
    return Scaffold(
      body: const Center(
        child: Text('Esta é a nova página!'),
      ),
    );
  }
}
