// Importar dependência do Material
import 'package:flutter/material.dart';

// Inicialização
void main() {
  runApp(const MyApp());
}

// StatelessWidget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: const Celulares(),
    );
  }
}

// Classe - StatefulWidget
class Celulares extends StatefulWidget {
  const Celulares({super.key});

  @override
  State<StatefulWidget> createState() {
    return EstruturaCelulares();
  }
}

// Classe - State
class EstruturaCelulares extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Image.asset("assets/images/logoStar.png", fit: BoxFit.cover),
      ),
      body: const SizedBox(
          child: Row(
        children: [
          Padding(
              padding: EdgeInsets.only(top: 30, left: 30),
              child: SizedBox(
                width: 200,
                child: Row(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          icon: Icon(
                            Icons.search,
                            color: Colors.pink,
                          ),
                          hintText: "O que você procura hoje?"),
                    )
                  ],
                ),
              ))
        ],
      )),
    );
  }
}
