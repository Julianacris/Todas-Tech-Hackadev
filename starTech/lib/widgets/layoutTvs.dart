//Layout da página de Tvs
import 'package:flutter/material.dart';
import 'package:hackadev/pages/tvsPg.dart';

class LayoutTvs extends StatefulWidget {
  final Function opcaoSelecionadaFuncao;
  const LayoutTvs({super.key, required this.opcaoSelecionadaFuncao});

  @override
  State<StatefulWidget> createState() {
    return LayoutTvsState();
  }
}

class LayoutTvsState extends State {
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
    );
    /* Scaffold(
     
     
      body: const TvsPg(),
    
    );
    */
  }
}
