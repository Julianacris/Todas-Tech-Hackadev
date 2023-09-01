import 'package:flutter/material.dart';
import 'package:hackadev/pages/produtos.dart';
//import 'package:hackadev/widgets/produto.dart';

class Categorias extends StatefulWidget {
  const Categorias({super.key});

  @override
  State<StatefulWidget> createState() {
    return ConteudoCategorias();
  }
}

class ConteudoCategorias extends State {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.pink[100],
        height: 50,
        child: Align(
          alignment: Alignment.center,
          child: SizedBox(
            width: 400,
            child: Row(
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.black, // Text Color
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Produtos()));
                  },
                  child: const Text("Todos"),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.black, // Text Color
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Produtos()));
                  },
                  child: const Text("SmartPhones"),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.black, // Text Color
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Produtos()));
                  },
                  child: const Text("Eletroportáteis"),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.black, // Text Color
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Produtos()));
                  },
                  child: const Text("SmartTvs"),
                ),
              ],
            ),
          ),
        ));
  }
}
