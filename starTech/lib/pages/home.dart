
import 'package:flutter/material.dart';
//import 'package:hackadev/widgets/produto.dart';
import 'package:hackadev/widgets/search_bar.dart';
import 'package:hackadev/widgets/recomendados.dart';
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
        AppSearchBar(),
        Categorias(),
        SizedBox(height: 20), // Espaçamento entre as seções
        Destaques(),
        SizedBox(height: 30),
        Flexible(child: Recomendados()),
      ],
    );
   
  }
}
