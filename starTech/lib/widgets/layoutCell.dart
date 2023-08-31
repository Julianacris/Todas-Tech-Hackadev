//Layout da página de Celulares

import 'package:flutter/material.dart';
import 'package:hackadev/widgets/footer.dart';
import 'package:hackadev/pages/celularesPg.dart';

class LayoutCell extends StatefulWidget {
  const LayoutCell({super.key});

  @override
  State<StatefulWidget> createState() {
    return LayoutCellState();
  }
}

class LayoutCellState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Image.asset("assets/images/logoStar.png", fit: BoxFit.cover),
        shadowColor: const Color.fromARGB(0, 0, 0, 0),
      ),
      backgroundColor: Colors.white,
      body: const CelularesPg(),
      bottomNavigationBar: const Footer(),
    );
  }
}
