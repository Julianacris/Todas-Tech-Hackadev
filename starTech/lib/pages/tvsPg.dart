//Página das Tvs / A home das Tvs

// ignore: avoid_web_libraries_in_flutter, unused_import

import 'package:flutter/material.dart';
import 'package:hackadev/widgets/header.dart';
import 'package:hackadev/widgets/search_bar.dart';
import 'package:hackadev/widgets/categorias.dart';
import 'package:hackadev/functions/Tvs.dart';

class TvsPg extends StatefulWidget {
  const TvsPg({super.key});

  @override
  State<StatefulWidget> createState() {
    return TvsPgState();
  }
}

class TvsPgState extends State {
  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment:
          CrossAxisAlignment.stretch, // Estende as seções horizontalmente
      children: [
        Header(),
        AppSearchBar(),
        Categorias(),
        SizedBox(height: 20),
        Flexible(child: Tvs()),
      ],
    );
  }
}
