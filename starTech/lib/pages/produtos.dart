//Página de todos os produtos / A home de todos os produtos

// ignore: avoid_web_libraries_in_flutter, unused_import


import 'package:flutter/material.dart';
import 'package:hackadev/widgets/header.dart';
import 'package:hackadev/widgets/search_bar.dart';
import 'package:hackadev/widgets/categorias.dart';
import 'package:hackadev/functions/Todos.dart';

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
        crossAxisAlignment: CrossAxisAlignment.stretch, // Estende as seções horizontalmente
        children: [
          Header(),
          AppSearchBar(),
          Categorias(),
          SizedBox(height: 20),
          Flexible(child: TodosProd()),
        ],
      );
  }
}
