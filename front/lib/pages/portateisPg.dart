// ignore_for_file: public_member_api_docs, sort_constructors_first
//Página dos eletroportáteis / A home dos eletroportáteis

// ignore: avoid_web_libraries_in_flutter, unused_import

import 'package:flutter/material.dart';

import 'package:hackadev/functions/Portateis.dart';
import 'package:hackadev/widgets/categorias.dart';
import 'package:hackadev/widgets/search_bar.dart';

class PortateisPg extends StatefulWidget {
  final Function opcaoSelecionadaFuncao;
  const PortateisPg({
    Key? key,
    required this.opcaoSelecionadaFuncao,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return PortateisPgState();
  }
}

class PortateisPgState extends State<PortateisPg> {
    String searchText = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.stretch, // Estende as seções horizontalmente
      children: [
        AppSearchBar(onSearch: (text) {
            setState(() {
              searchText = text;
            });
          }),//Barra de pesquisa
        Categorias(opcaoSelecionadaFuncao: widget.opcaoSelecionadaFuncao),
        const SizedBox(height: 20),
        Flexible(child: Portateis(opcaoSelecionadaFuncao: widget.opcaoSelecionadaFuncao)),
      ],
    );
  }
}
