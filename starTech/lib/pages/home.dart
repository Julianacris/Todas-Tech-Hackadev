// ignore: avoid_web_libraries_in_flutter, unused_import

import 'package:flutter/material.dart';
import 'package:hackadev/widgets/search_bar.dart';
import 'package:hackadev/functions/recomendados.dart';
import 'package:hackadev/widgets/categorias.dart';
import 'package:hackadev/widgets/destaques.dart';

class Home extends StatefulWidget {
  final Function opcaoSelecionadaFuncao;
  const Home({super.key, required this.opcaoSelecionadaFuncao});

  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.stretch, // Estende as seções horizontalmente
      children: [
        const AppSearchBar(), //Barra de pesquisa
        Categorias(
          opcaoSelecionadaFuncao: widget.opcaoSelecionadaFuncao,
        ), // Barra de categorias
        const SizedBox(height: 20), // Espaçamento entre as seções
        const Destaques(), // Destaques da home
        const SizedBox(height: 10), // Espaçamento entre as seções
        const SizedBox(
            height: 25,
            child: Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                "Recomendados para você:",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.pink,
                  decorationThickness: 3,
                ),
              ),
            )),
        const Flexible(
          child: Recomendados(),
        ), // Classe que chama os produtos/Recomendados
      ],
    );
  }
}
