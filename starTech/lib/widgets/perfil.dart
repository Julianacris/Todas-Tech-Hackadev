import 'package:flutter/material.dart';

class Perfil extends StatefulWidget {
  const Perfil({super.key});

  @override
  State<StatefulWidget> createState() {
    return ConteudoPerfil();
  }
}

class ConteudoPerfil extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text('Esta é a página Perfil!'),
      ),
    );
  }
}
