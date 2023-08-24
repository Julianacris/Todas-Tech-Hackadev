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
     var size = MediaQuery.of(context).size;
      
    return Scaffold(
       body: Stack(
        children: <Widget>[
          Container(
            // Here the height of the container is 45% of our total height
            height: size.height * .25,
            decoration: const BoxDecoration(
              color: Color(0xFFFFFFFF),
              image: DecorationImage(
                alignment: Alignment.topCenter,
                image: AssetImage("assets/images/logo.png"),
              ),
            ),
          ),
        ],
      ),  
    );
  }
}
