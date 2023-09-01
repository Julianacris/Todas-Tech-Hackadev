//Layout da página de Eletroportáteis

import 'package:flutter/material.dart';
import 'package:hackadev/widgets/footer.dart';
import 'package:hackadev/pages/portateisPg.dart';

class LayoutPort extends StatefulWidget {
  const LayoutPort({super.key});

  @override
  State<StatefulWidget> createState() {
    return LayoutPortState();
  }
}

class LayoutPortState extends State {
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
      body: const PortateisPg(),
      bottomNavigationBar: const Footer(),
    );
  }
}