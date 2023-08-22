import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Celulares.dart';
import 'Portateis.dart';
import 'Tvs.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<StatefulWidget> createState() {
    return ConteudoPagina();
  }
}

class ConteudoPagina extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Star Tech"),
      ),
      
        
    );
  }
}
