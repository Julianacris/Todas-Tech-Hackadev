//Página dos eletroportáteis / A home dos eletroportáteis

// ignore: avoid_web_libraries_in_flutter, unused_import
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:hackadev/functions/Portateis.dart';
import 'package:hackadev/widgets/header.dart';
import 'package:hackadev/widgets/search_bar.dart';
import 'package:hackadev/widgets/categorias.dart';

class PortateisPg extends StatefulWidget {
  const PortateisPg({super.key});

  @override
  State<StatefulWidget> createState() {
    return PortateisPgState();
  }
}

class PortateisPgState extends State {
  @override
  Widget build(BuildContext context) {
   return const Column(
        crossAxisAlignment: CrossAxisAlignment.stretch, // Estende as seções horizontalmente
        children: [
          Header(),
          AppSearchBar(),
          Categorias(),
          SizedBox(height: 20),
          Flexible(child: Portateis()),
        ],
      );
  }
}
