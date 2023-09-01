//GridView que vai conter as Tvs

// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:hackadev/widgets/produto.dart';

class Tvs extends StatefulWidget {
  const Tvs({super.key});

  @override
  State<StatefulWidget> createState() {
    return TvsState();
  }
}

class TvsState extends State {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: const <Widget>[
            Produto(preco: ' R\$ 1.099,00', nome: "SmartTV Philco 32'", 
            pathImagem: 'assets/images/tvSmart-philco.png'),
            Produto(preco: ' R\$ 2.519,00', nome: "SmartTV LG 55'", 
            pathImagem: 'assets/images/tv-lg.png'),
            Produto(preco: ' R\$ 3.399,00', nome: "SmartTV Philips 50'", 
            pathImagem: 'assets/images/tvSmart-philips.png'),
            Produto(preco: ' R\$ 829,00', nome: "SmartTV LG 24'", 
            pathImagem: 'assets/images/tvSmart-Lg.png'),
            Produto(preco: ' R\$ 5.799,00', nome: "SmartTV Sansung QLed 55'", 
            pathImagem: 'assets/images/tv-sansung-neo.png'),
            Produto(preco: ' R\$ 4.299,00', nome: "SmartTV TCL QLed 65'", 
            pathImagem: 'assets/images/tv-tcl.png'),
          ],
        );
  }
}
