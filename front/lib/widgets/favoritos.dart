import 'package:flutter/material.dart';

class Favoritos extends StatefulWidget {
  const Favoritos({super.key});

  @override
  State<StatefulWidget> createState() {
    return ConteudoFavoritos();
  }
}

class ConteudoFavoritos extends State {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Esta é a página Favoritos!'),
      ),
    );
  }
}
