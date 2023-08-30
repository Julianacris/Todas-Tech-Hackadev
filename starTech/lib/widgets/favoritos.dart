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
  Widget build(BuildContext context){
      return Scaffold(
      appBar: AppBar(
        title:  const Text('Favoritos'),
      ),
      body: const Center(
        child:  Text('Esta é a página Favoritos!'),
      ),
    );
  }
}
