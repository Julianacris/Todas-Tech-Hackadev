//Página das Tvs / A home das Tvs

// ignore: avoid_web_libraries_in_flutter, unused_import

import 'package:flutter/material.dart';
import 'package:hackadev/widgets/search_bar.dart';
import 'package:hackadev/widgets/categorias.dart';
import 'package:hackadev/functions/Tvs.dart';

class TvsPg extends StatefulWidget {
  final Function opcaoSelecionadaFuncao;
  const TvsPg({super.key, required this.opcaoSelecionadaFuncao});

  @override
  State<StatefulWidget> createState() {
    return TvsPgState();
  }
}

class TvsPgState extends State<TvsPg> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.stretch, // Estende as seções horizontalmente
      children: [
        const AppSearchBar(),
        Categorias(opcaoSelecionadaFuncao: widget.opcaoSelecionadaFuncao),
        const SizedBox(height: 20),
        Flexible(child: Tvs(opcaoSelecionadaFuncao: widget.opcaoSelecionadaFuncao)),
      ],
    );
  }
}
