//Página dos celulares / A home dos celulares

// ignore: avoid_web_libraries_in_flutter, unused_import

import 'package:flutter/material.dart';
import 'package:hackadev/widgets/search_bar.dart';
import 'package:hackadev/functions/Celulares.dart';
import 'package:hackadev/widgets/categorias.dart';

class CelularesPg extends StatefulWidget {
  final Function opcaoSelecionadaFuncao;
  const CelularesPg({super.key, required this.opcaoSelecionadaFuncao});

  @override
  State<StatefulWidget> createState() {
    return CelularesPgState();
  }
}

class CelularesPgState extends State<CelularesPg> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.stretch, // Estende as seções horizontalmente
      children: [
        const AppSearchBar(),
        Categorias(opcaoSelecionadaFuncao: widget.opcaoSelecionadaFuncao),
        const SizedBox(height: 20),
        const Flexible(child: Celulares()),
      ],
    );
  }
}
