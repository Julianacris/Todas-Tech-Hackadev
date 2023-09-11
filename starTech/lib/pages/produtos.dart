// ignore_for_file: public_member_api_docs, sort_constructors_first
//Página de todos os produtos / A home de todos os produtos

// ignore: avoid_web_libraries_in_flutter, unused_import

import 'package:flutter/material.dart';

import 'package:hackadev/functions/Todos.dart';
import 'package:hackadev/widgets/categorias.dart';
import 'package:hackadev/widgets/search_bar.dart';

class Produtos extends StatefulWidget {
  final Function opcaoSelecionadaFuncao;

  const Produtos({
    Key? key,
    required this.opcaoSelecionadaFuncao,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return ProdutosState();
  }
}

class ProdutosState extends State<Produtos> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.stretch, // Estende as seções horizontalmente
      children: [
        const AppSearchBar(),
        Categorias(opcaoSelecionadaFuncao: widget.opcaoSelecionadaFuncao),
        const SizedBox(height: 20),
        const Flexible(child: TodosProd()),
      ],
    );
  }
}
