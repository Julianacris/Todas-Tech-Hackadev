// ignore: avoid_web_libraries_in_flutter, unused_import
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:hackadev/widgets/header.dart';
import 'package:hackadev/widgets/search_bar.dart';
import 'package:hackadev/functions/recomendados.dart';
import 'package:hackadev/widgets/categorias.dart';
import 'package:hackadev/widgets/destaques.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State {
  @override
  Widget build(BuildContext context) {
   return const Column(
        crossAxisAlignment: CrossAxisAlignment.stretch, // Estende as seções horizontalmente
        children: [
          Header(), // Logo do projeto
          AppSearchBar(), //Barra de pesquisa
          Categorias(), // Barra de categorias
          SizedBox(height: 20), // Espaçamento entre as seções
          Destaques(), // Destaques da home
          SizedBox(height: 5),// Espaçamento entre as seções
          SizedBox(
            height: 25,
            child: Text("Recomendados para você:", 
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              decoration: TextDecoration.underline,
              decorationColor: Colors.pink,
              decorationThickness: 3,
            ),
            )
          ),
          Flexible(child: Recomendados()), // Classe que chama os produtos/Recomendados
        ],
      );
  }
}
