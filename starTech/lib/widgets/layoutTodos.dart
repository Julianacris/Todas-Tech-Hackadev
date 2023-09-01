//Layout da página de Todos os produtos

import 'package:flutter/material.dart';
import 'package:hackadev/widgets/footer.dart';
import 'package:hackadev/pages/produtos.dart';

class LayoutTodos extends StatefulWidget {
  const LayoutTodos({super.key});

  @override
  State<StatefulWidget> createState() {
    return LayoutTodosState();
  }
}

class LayoutTodosState extends State {
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
      body: const Produtos(),
      bottomNavigationBar: const Footer(),
    );
  }
}
